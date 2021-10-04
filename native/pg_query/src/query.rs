use std::ffi::{CStr, CString};

pub fn parse(stmt: &str) -> Result<String, String> {
    Ok(String::from(stmt))
}