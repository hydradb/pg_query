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

      iex> PgQuery.parse("SELECT * FROM t1")
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

  The resulting json binary is not decoded

  ## Examples

      iex> PgQuery.as_json("SELECT * FROM t1")
  """
  @spec as_json(binary()) :: binary()
  def as_json(stmt) do
    with {:ok, json} = _ok <- Native.parse_as_json(stmt) do
      json
    end
  end

  def try_decode(proto, struct) do
    try do
      decoded = Protobuf.decode(proto, struct)
      {:ok, decoded}
    rescue
      e in Protobuf.DecodeError -> {:error, e.message <> ": #{inspect(proto)}"}
    end
  end
end
