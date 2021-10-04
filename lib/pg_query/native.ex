defmodule PGQuery.Native do
  use Rustler, otp_app: :pg_query, crate: :pg_query

  def parse(_stmt), do: err()

  defp err, do: :erlang.nif_error(:nif_not_loaded)
end
