defmodule PgQuery.Error do
  @moduledoc "#{__MODULE__}"

  defexception [:message]

  def exception(msg) when is_binary(msg) do
    %__MODULE__{message: msg}
  end

  def message(%{message: msg}) do
    msg
  end
end
