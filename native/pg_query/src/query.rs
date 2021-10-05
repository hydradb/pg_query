use crate::PGQueryError;
use pg_query_sys::{
    pg_query_deparse_protobuf, pg_query_free_deparse_result, pg_query_free_normalize_result,
    pg_query_free_parse_result, pg_query_free_protobuf_parse_result, pg_query_normalize,
    pg_query_parse, pg_query_parse_protobuf, PgQueryProtobuf,
};
use rustler::{Binary, OwnedBinary};
use std::ffi::{CStr, CString};
use std::os::raw::c_char;

pub fn parse(stmt: &str) -> Result<String, PGQueryError> {
    unsafe {
        let c_str = CString::new(stmt).unwrap();

        let result = pg_query_parse(c_str.as_ptr() as *const c_char);

        if !result.error.is_null() {
            let err = (&*result.error).message;
            let msg = CStr::from_ptr(err).to_string_lossy().into();
            pg_query_free_parse_result(result);

            return Err(PGQueryError::ParseError(msg));
        }

        let json = CStr::from_ptr(result.parse_tree).to_string_lossy().into();
        pg_query_free_parse_result(result);
        Ok(json)
    }
}

pub fn parse_as_protobuf(stmt: &str) -> Result<OwnedBinary, PGQueryError> {
    unsafe {
        let c_str = CString::new(stmt).unwrap();
        let result = pg_query_parse_protobuf(c_str.as_ptr() as *const c_char);

        if !result.error.is_null() {
            let err = (&*result.error).message;
            let msg = CStr::from_ptr(err).to_string_lossy().into();

            pg_query_free_protobuf_parse_result(result);

            return Err(PGQueryError::ParseError(msg));
        }

        let mut erl_bin = OwnedBinary::new(result.parse_tree.len as usize).unwrap();
        erl_bin
            .as_mut_slice()
            .copy_from_slice(std::slice::from_raw_parts(
                result.parse_tree.data as *const u8,
                result.parse_tree.len as usize,
            ));
        pg_query_free_protobuf_parse_result(result);

        Ok(erl_bin)
    }
}

pub fn deparse(proto: Binary) -> Result<String, PGQueryError> {
    unsafe {
        let tree = PgQueryProtobuf {
            len: proto.len() as u32,
            data: proto.as_slice().as_ptr() as *mut i8,
        };
        let result = pg_query_deparse_protobuf(tree);

        if !result.error.is_null() {
            let err = (&*result.error).message;
            let msg = CStr::from_ptr(err).to_string_lossy().into();

            pg_query_free_deparse_result(result);

            return Err(PGQueryError::ParseError(msg));
        }

        let stmt = CStr::from_ptr(result.query).to_string_lossy().into();

        Ok(stmt)
    }
}

pub fn normalize(stmt: &str) -> Result<String, PGQueryError> {
    unsafe {
        let c_str = CString::new(stmt).unwrap();
        let result = pg_query_normalize(c_str.as_ptr() as *const c_char);

        if !result.error.is_null() {
            let err = (&*result.error).message;
            let msg = CStr::from_ptr(err).to_string_lossy().into();

            pg_query_free_normalize_result(result);

            return Err(PGQueryError::ParseError(msg));
        }

        let raw = CStr::from_ptr(result.normalized_query);
        let normalized_query = raw.to_string_lossy().to_string();

        pg_query_free_normalize_result(result);

        Ok(normalized_query)
    }
}
