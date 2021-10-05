# PGQuery

A library to parse postgreSQL queries.

It uses [pg_query](https://github.com/pganalyze/pg_query) embedded as a rust nif.

## Features

* - [x] Parse postgresSQL statements into a parse tree either as a struct or json
* - [] Modify the parse tree
* - [] Normalize
* - [] Deparse
* - [] Scan
* - [] PL/pgSQL Parsing

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

## Generate protobuf

```
mix escript.install git https://github.com/elixir-protobuf/protobuf.git
protoc --proto_path=./proto --elixir_out=./lib/pg_query ./proto/pg_query.proto
```

## Installation

```elixir
def deps do
  [
    {:pg_query, github: "hydradb/pg_query", branch: "master", submodules: true}
  ]
end
```
