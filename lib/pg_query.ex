defmodule PGQuery do
  @moduledoc """
  Documentation for `PgQuery`.
  """

  @spec parse(binary()) :: PGQuery.Ast.t()
  defdelegate parse(bin), to: PGQuery.Native
end
