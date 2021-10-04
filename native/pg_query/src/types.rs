use rustler::NifStruct;

rustler::atoms! {
    ok,
    error
}

#[derive(NifStruct)]
#[module = "PGQuery.Ast"]
pub struct Ast {
    pub tree: String
}

// pub enum PGQueryError {
//     #[error("Parse error {0}")]
//     ParseError(String)
// }

impl Ast {
    pub fn new(tree: String) -> Self {
        Self { tree }
    }
}