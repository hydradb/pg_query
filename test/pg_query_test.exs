defmodule PgQueryTest do
  use ExUnit.Case
  doctest PgQuery

  test "greets the world" do
    assert PgQuery.hello() == :world
  end
end
