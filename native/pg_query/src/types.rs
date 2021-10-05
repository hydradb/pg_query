use rustler::{Encoder, Env, Term};
#[derive(Debug)]
pub enum PGQueryError {
    ParseError(String),
}

impl<'a> Encoder for PGQueryError {
    fn encode<'b>(&self, env: Env<'b>) -> Term<'b> {
        match self {
            PGQueryError::ParseError(msg) => format!("ParseError: {0}", msg).encode(env),
        }
    }
}
