defmodule PGQueryTest do
  use ExUnit.Case
  doctest PgQuery

  test "greets the world" do
    assert PGQuery.hello() == :world
  end
end
