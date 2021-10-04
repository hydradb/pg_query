defmodule PGQuery.Ast do
  defstruct [:tree]
  @type t :: %__MODULE__{tree: binary()}
end
