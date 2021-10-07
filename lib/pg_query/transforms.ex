defmodule PgQuery.Transforms do
  @moduledoc """
  Helpers for transforming the parse tree
  """
  @type t :: Access.t()

  @doc ~S"""
  Similar to `Kernel.get_and_update_in/3` to disposes of the previous
  value in order for better composition of functions. If you require the current value
  in your functions use `Kernelget_and_update_in/3`

  ## Examples

      iex> {:ok, pr} = PgQuery.parse("SELECT * FROM t1")
      iex> import PgQuery.Transforms, only: [get_and_update: 3]
      iex> update_from = fn {node_kind, from} ->
      ...>   {node_kind, %{from | relname: "old_#{from.relname}"}}
      ...> end
      iex> update_select = fn {node_kind, select} ->
      ...>   value = get_and_update(select, [:from_clause, Access.at(0), :node], update_from)
      ...>   {node_kind, value}
      ...> end
      iex> pr |> get_and_update([:stmts, Access.at!(0), :stmt, :node], update_select) |> PgQuery.deparse()
      {:ok, "SELECT * FROM old_t1"}
  """
  @spec get_and_update(t(), [any()], (term | nil -> new_value :: any())) :: t()
  def get_and_update(data, keys, fun) do
    {_, new_data} = get_and_update_in(data, keys, &{&1, fun.(&1)})

    new_data
  end
end
