use std::ffi::{CStr, CString};
use std::os::raw::c_char;
use pg_query_sys::{pg_query_parse, pg_query_free_parse_result};
use crate::Ast;

pub fn parse(stmt: &str) -> Result<Ast, String> {
    unsafe {
        let c_str = CString::new(stmt).unwrap();

        let result = pg_query_parse(c_str.as_ptr() as *const c_char);

        if !result.error.is_null() {
            let err = (&*result.error).message;
            let msg = CStr::from_ptr(err).to_string_lossy().into();
            pg_query_free_parse_result(result);

            return Err(msg);
        }

        let json = CStr::from_ptr(result.parse_tree).to_string_lossy().into();

        Ok(Ast::new(json))
    }
}