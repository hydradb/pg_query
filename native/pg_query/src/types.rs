use rustler::{Encoder, Env, Term};
#[derive(Debug)]
pub enum PGQueryError {
    ParseError(String),
}
pub struct FingerPrint(pub u64, pub String);

impl<'a> Encoder for PGQueryError {
    fn encode<'b>(&self, env: Env<'b>) -> Term<'b> {
        match self {
            PGQueryError::ParseError(msg) => format!("ParseError: {0}", msg).encode(env),
        }
    }
}

impl<'a> Encoder for FingerPrint  {
    fn encode<'b>(&self, env: Env<'b>) -> Term<'b> {
        (self.0, self.1.clone()).encode(env)
    }
}
