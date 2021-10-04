mod types;
mod query;
pub use types::{Ast};

#[rustler::nif]
fn parse(stmt: &str) -> Ast {
    query::parse(stmt).unwrap()
}

rustler::init!("Elixir.PGQuery.Native", [parse]);
