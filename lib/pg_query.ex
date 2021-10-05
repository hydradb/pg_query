defmodule PgQuery do
  @moduledoc """
  Documentation for `PgQuery`.
  """
  alias __MODULE__.Native

  @type t :: PgQuery.ParseResult.t()
  @type fingerprint :: {non_neg_integer(), binary()}

  @doc """
  Parses the statement into a `PgQuery.ParseResult`

  The parse result can be modified and passed to deparse to get a query string
  back. See `deparse/1` for more information

  ## Examples

      iex> {:ok,%PgQuery.ParseResult{} = r} =  PgQuery.parse("SELECT * FROM t1")
      iex> r.version
      130003

  """
  @spec parse(binary()) :: {:ok, t()} | {:error, term()}
  def parse(stmt) do
    with {:ok, proto} <- Native.parse_as_proto(stmt),
         {:ok, _t} = ok <- try_decode(proto, PgQuery.ParseResult) do
      ok
    end
  end

  @doc """
  Deparses the parse tree into a String statement

  ## Examples

      iex> {:ok, pr} = PgQuery.parse("SELECT 1")
      iex> PgQuery.deparse(pr)
      {:ok, "SELECT 1"}
  """
  @spec deparse(t()) :: {:ok, binary()} | {:error, term()}
  def deparse(%PgQuery.ParseResult{} = pr) do
    pr
    |> PgQuery.ParseResult.encode()
    |> Native.deparse()
  end

  @doc """
  Normalizes the statement into a parameterized statement

  ## Examples

      iex> PgQuery.normalize("SELECT * FROM dbs WHERE name = 'postgresSQL'")
      {:ok, "SELECT * FROM dbs WHERE name = $1"}

  """
  @spec normalize(binary()) :: {:ok, binary()} | {:error, term()}
  def normalize(stmt), do: Native.normalize(stmt)

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
          {:ok, binary() | t()} | {:error, term()}
  def as_json(stmt, opts \\ []) do
    decode? = Keyword.get(opts, :decode?, false)

    decoder = if decode?, do: &from_json/1, else: &{:ok, &1}

    with {:ok, json} <- Native.parse_as_json(stmt),
         {:ok, _t} = ok <- decoder.(json) do
      ok
    end
  end

  @doc """
  Turns the given JSON string into a `PgQuery.ParseResult`

  ## Examples

     iex> {:ok, json} = PgQuery.as_json("SELECT 1")
     iex> {:ok, %PgQuery.ParseResult{} = pr} = PgQuery.from_json(json)
     iex> pr.version
     130003
  """
  @spec from_json(binary()) :: {:ok, t()} | {:error, term()}
  def from_json(json) do
    Protobuf.JSON.decode(json, PgQuery.ParseResult)
  end

  @doc """
  Fingerprints the given statement.

  The goal of fingerprinting is to allow you to identify similar queries that are different only because of the   specific object that is being queried for (i.e. different user ids/etc), or because of formatting.

  The fingerprint for a parsetree is compatible across different libraries using `libpg_query`.

  ## Examples
      iex> PgQuery.fingerprint("SELECT 1")
      {:ok, {5836069208177285818, "50fde20626009aba"}}
  """
  @spec fingerprint(binary()) :: {:ok, fingerprint()} | {:error, term()}
  def fingerprint(stmt) do
    Native.fingerprint(stmt)
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
