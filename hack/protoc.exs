defmodule CodeGen do
  def gen_using(line) do
    expr =
      quote do
        use Accessible
      end

    {expr_n, ctx, args} = replace_ctx(line, expr)
    {expr_n, ctx, Enum.map(args, &replace_ctx(line, &1))}
  end

  defp replace_ctx(line, {expr, _ctx, args}) do
    {expr, [line: line + 1], args}
  end

  def inject(ast) do
    {:defmodule, mod_ctx, [_, block | _] = mod_args} = ast

    [{do_, {:__block__, block_ctx, block_args}}] = block

    {line, index, _} = find_line(block_args)
    expr = gen_using(line)

    new_block_args = List.insert_at(block_args, index + 1, expr)

    new_mod_args =
      List.replace_at(
        mod_args,
        1,
        [
          {do_, {:__block__, block_ctx, new_block_args}}
        ]
      )

    {:defmodule, mod_ctx, new_mod_args}
  end

  def find_line(mod_head) do
    Enum.reduce_while(mod_head, {_line = 0, _elem_index = nil, _index = 0}, fn
      {:use, [line: line], _}, {_, _, index} ->
        {:cont, {line, index, index + 1}}

      {_else, _, _}, {line, nil, index} ->
        {:cont, {line, nil, index + 1}}

      {_else, _, _}, {_, elem_index, _} = acc when not is_nil(elem_index) ->
        {:halt, acc}
    end)
  end
end

defmodule Runner do
  def run(cwd) do
    tmp_dir!(cwd)

    with {_, 0} <- protoc(cwd, ".tmp"),
         {:ok, ast} <- file_to_quoted(Path.join([cwd, ".tmp/pg_query.pb.ex"])),
         content = quoted_prepare(ast) do
      File.write!(Path.join([cwd, "lib/pg_query/pg_query.pb.ex"]), content)
    else
      err -> IO.puts("Protoc failed: #{inspect(err)}")
    end
  end

  defp tmp_dir!(root) do
    File.mkdir_p!(Path.join([root, ".tmp"]))
  end

  defp protoc(root, out) do
    proto_path = Path.join([root, "proto"])
    out_path = Path.join([root, out])

    System.cmd(
      "protoc",
      [
        "--proto_path=#{proto_path}",
        "--elixir_out=#{out_path}",
        "#{Path.join([root, "proto/pg_query.proto"])}"
      ]
    )
  end

  def file_to_quoted(path) do
    with {:ok, file} <- File.read(path),
         {:ok, {expr, ctx, args}} <- Code.string_to_quoted(file) do
      args = Enum.map(args, &CodeGen.inject/1)
      {:ok, {expr, ctx, args}}
    end
  end

  def quoted_prepare(ast) do
    ast
    |> Macro.to_string()
    |> Code.format_string!(defmodule: :*, use: :*)
  end
end

Runner.run(File.cwd!())
