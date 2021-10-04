mod query;

#[rustler::nif]
fn parse(stmt: &str) -> String {
    query::parse(stmt).unwrap()
}

rustler::init!("Elixir.PGQuery.Native", [parse]);
