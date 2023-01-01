use std::io::sink;
use std::thread::sleep;
use std::time::Duration;
use flutter_rust_bridge::StreamSink;

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
        println!("{}------------", &path);

        let mut ticks = 0;
        let time = Duration::from_secs(1);
        loop {
            self.sink.add(ParseEntity {
                status: ticks,
                msg: "xdd666".to_string(),
            });
            sleep(time);
            if ticks == 9 {
                break;
            }
            ticks += 1;
        }
    }
}