use flutter_rust_bridge::StreamSink;

use crate::code_scan::parse_code::{ParseCode, ParseEntity};

pub fn parse_code(path: String, sink: StreamSink<ParseEntity>) {
    let parse_code = ParseCode::new(sink);
    parse_code.start(path);
}
