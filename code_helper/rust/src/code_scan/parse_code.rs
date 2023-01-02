use std::fs::File;
use std::io::{Read, sink};
use std::thread::sleep;
use std::time::Duration;
use flutter_rust_bridge::StreamSink;

fn main() {}

pub struct ParseEntity {
    pub status: i32,
    pub msg: String,
}

pub struct ParseCode {
    pub sink: StreamSink<ParseEntity>,
}

impl ParseCode {
    pub fn new(sink: StreamSink<ParseEntity>) -> ParseCode {
        ParseCode {
            sink
        }
    }

    pub fn start(&self, path: String) {
        let mut file = File::open(path).unwrap();
        let mut contents = String::new();
        file.read_to_string(&mut contents).unwrap();
        self.sink.add(ParseEntity {
            status: 1,
            msg: contents,
        });
    }
}