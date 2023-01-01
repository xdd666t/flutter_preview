use std::collections::HashMap;
use std::thread::sleep;
use std::time::Duration;
use flutter_rust_bridge::StreamSink;
use crate::code_scan::parse_code::{ParseCode, ParseEntity};

pub fn add(left: usize, right: usize) -> usize {
    left + right
}

pub fn self_add(num: usize) -> usize {
    num + 1
}

pub fn parse_code(path: String, sink: StreamSink<ParseEntity>) {
    let parse_code = ParseCode::new(sink);
    parse_code.start(path);
}



