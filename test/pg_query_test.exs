defmodule PGQueryTest do
  use ExUnit.Case
  doctest PgQuery

  test "Returns a parser error for invalid statements" do
    assert {:error, reason} = PgQuery.parse("SELECTA 1")
    assert reason =~ "syntax error"
  end

  test "parse/1 returns a `PgQuery.ParseResult` for valid statements" do
    assert {:ok, %PgQuery.ParseResult{} = pr} = PgQuery.parse("SELECT 1")

    refute Enum.empty?(pr.stmts)
  end

  test "as_json/1 returns a json string" do
    assert {:ok, json} = PgQuery.as_json("SELECT 1")
    assert is_binary(json)
  end

  test "json returned from as_json/2 can be used in from_json/1" do
    assert {:ok, json} = PgQuery.as_json("SELECT 1")
    assert {:ok, %PgQuery.ParseResult{} = pr} = PgQuery.from_json(json)

    refute Enum.empty?(pr.stmts)
  end

  test "deparse turns the parse tree into a statement" do
    stmt = "SELECT * FROM t1"

    for {:ok, pr} <- [PgQuery.as_json(stmt, decode?: true), PgQuery.parse(stmt)] do
      assert {:ok, ^stmt} = PgQuery.deparse(pr)
    end
  end

  test "fingerprint returns the fingerprint of the statement" do
    assert {:ok, {_, _}} = PgQuery.fingerprint("SELECT 1")
  end
end
