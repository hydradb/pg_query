mod query;
mod types;
use rustler::{Atom, Binary, Env, Error, NifResult};
pub use types::{FingerPrint, PGQueryError};

mod atoms {
    rustler::atoms! {
        ok,
        error
    }
}
#[rustler::nif]
fn parse_as_json(stmt: &str) -> Result<String, PGQueryError> {
    query::parse(stmt)
}

#[rustler::nif]
fn parse_as_proto<'a>(env: Env<'a>, stmt: &'a str) -> NifResult<(Atom, Binary<'a>)> {
    match query::parse_as_protobuf(stmt) {
        Ok(bin) => Ok((atoms::ok(), Binary::from_owned(bin, env))),
        Err(PGQueryError::ParseError(msg)) => Err(Error::Term(Box::new(msg))),
    }
}

#[rustler::nif]
fn deparse(tree: Binary) -> Result<String, PGQueryError> {
    query::deparse(tree)
}

#[rustler::nif]
fn normalize(stmt: &str) -> Result<String, PGQueryError> {
    query::normalize(stmt)
}

#[rustler::nif]
fn fingerprint(stmt: &str) -> Result<FingerPrint, PGQueryError> {
    query::fingerprint(stmt)
}

rustler::init!(
    "Elixir.PgQuery.Native",
    [parse_as_json, parse_as_proto, deparse, normalize, fingerprint]
);
