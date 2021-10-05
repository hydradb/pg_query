defmodule PgQuery.Native do
  use Rustler, otp_app: :pg_query, crate: :pg_query

  def deparse(_proto), do: err()
  def parse_as_json(_stmt), do: err()
  def parse_as_proto(_stmt), do: err()

  defp err, do: :erlang.nif_error(:nif_not_loaded)
end
