# PgQuery

---

![CI](https://github.com/hydradb/pg_query/actions/workflows/ci.yml/badge.svg)

Rust NIF to postgreSQL parser.

It uses [libpg_query](https://github.com/pganalyze/libpg_query) which builds parts of the postgreSQL server source.

`pg_query.ex` enables parsing SQL queries into the internal postgreSQL parsetree. 
As well as deparsing the parsetree into a statement.


## Features

- [x] Parse postgresSQL statements into a parse tree either as a struct or json
- [X] Deparse - Turn the parse tree back into a statement 
- [X] Normalize - Turn a statement into a parameterized statement
- [X] Access / Modify the parse tree using the [`Access`](https://hexdocs.pm/elixir/Access.html) behaviour
- [] Scan
- [] PL/pgSQL Parsing

## Usage

### Parsing a query
```elixir
PgQuery.parse("SELECT 1")

{:ok,
 %PgQuery.ParseResult{
   stmts: [
     %PgQuery.RawStmt{
       stmt: %PgQuery.Node{
         node: {:select_stmt,
          %PgQuery.SelectStmt{
            all: false,
            distinct_clause: [],
            from_clause: [],
            group_clause: [],
            having_clause: nil,
            into_clause: nil,
            larg: nil,
            limit_count: nil,
            limit_offset: nil,
            limit_option: :LIMIT_OPTION_DEFAULT,
            locking_clause: [],
            op: :SETOP_NONE,
            rarg: nil,
            sort_clause: [],
            target_list: [
              %PgQuery.Node{
                node: {:res_target,
                 %PgQuery.ResTarget{
                   indirection: [],
                   location: 7,
                   name: "",
                   val: %PgQuery.Node{
                     node: {:a_const,
                      %PgQuery.A_Const{
                        location: 7,
                        val: %PgQuery.Node{
                          node: {:integer, %PgQuery.Integer{ival: 1}}
                        }
                      }}
                   }
                 }}
              }
            ],
            values_lists: [],
            where_clause: nil,
            window_clause: [],
            with_clause: nil
          }}
       },
       stmt_len: 0,
       stmt_location: 0
     }
   ],
   version: 130003
 }}
```

### Modify and deparse

* Replaces all table names with `old_<table_name>`

```elixir
import PgQuery.Transforms, only: [get_and_update: 3]

{:ok, pr} = PgQuery.parse("SELECT * FROM t1")

update_from = fn {node_kind, from} ->
  {node_kind, %{from | relname: "old_#{from.relname}"}}
end

update_select = fn {node_kind, select} ->
  value = get_and_update(select, [:from_clause, Access.at(0), :node], update_from)
  {node_kind, value}
end

pr 
|> get_and_update([:stmts, Access.at!(0), :stmt, :node], update_select) 
|> PgQuery.deparse()

{:ok, "SELECT * FROM old_t1"}
```

### Normalize

* Normalize (parameterize) the given statement

```elixir
"SELECT * FROM posts WHERE author = 'Mike'" 
|> PgQuery.normalize!()
|> PgQuery.parse!()
```

## Installation

```elixir
def deps do
  [
    {:pg_query, github: "hydradb/pg_query", branch: "master", submodules: true}
  ]
end
```
