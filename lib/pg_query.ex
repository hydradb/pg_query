defmodule PgQuery do
  @moduledoc """
  Documentation for `PgQuery`.
  """
  alias PgQuery.Native

  @doc """
  Parses the statement into a `PgQuery.ParseResult`

  The parse result can be modified and passed to deparse to get a query string
  back. See `deparse/1` for more information

  ## Examples

      iex> {:ok,%PgQuery.ParseResult{} = r} =  PgQuery.parse("SELECT * FROM t1")
      iex> r.version
      130003

  """
  @spec parse(binary()) :: {:ok, PgQuery.ParseResult.t()} | {:error, term()}
  def parse(stmt) do
    with {:ok, proto} <- Native.parse_as_proto(stmt),
         {:ok, _t} = ok <- try_decode(proto, PgQuery.ParseResult) do
      ok
    end
  end

  @doc """
  Parse the statement and return the ParseResult as a json binary

  The resulting json binary is not decoded by default pass `decode: true`

  ## Options
  * `:decode?` - Boolean indicating if the resulting json binary should be decoded into a `PgQuery.ParseResult`

  ## Examples

      iex> {:ok, json} = PgQuery.as_json("SELECT * FROM t1")
      iex> is_binary(json)
      true

      iex> {:ok, %PgQuery.ParseResult{} = r} = PgQuery.as_json("SELECT * FROM t1", decode?: true)
      iex> r.version
      130003
  """
  @spec as_json(binary(), Keyword.t()) ::
          {:ok, binary() | PgQuery.ParseResult.t()} | {:error, term()}
  def as_json(stmt, opts \\ []) do
    decode? = Keyword.get(opts, :decode?, false)

    decoder =
      if decode?,
        do: &Protobuf.JSON.decode(&1, PgQuery.ParseResult),
        else: &{:ok, &1}

    with {:ok, json} <- Native.parse_as_json(stmt),
         {:ok, _t} = ok <- decoder.(json) do
      ok
    end
  end

  defp try_decode(proto, struct) do
    try do
      decoded = Protobuf.decode(proto, struct)
      {:ok, decoded}
    rescue
      e in Protobuf.DecodeError -> {:error, e.message <> ": #{inspect(proto)}"}
    end
  end
end
