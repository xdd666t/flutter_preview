import 'dart:ffi';
import 'dart:io';

import 'rust_ffi/rust_ffi.dart';

part 'native_dylib.dart';

class NativeFun {
  NativeFun._();

  static final _ffi = RustFfiImpl(_NativeDyLib.dyLib);

  static Stream<ParseEntity> parseCode(String path) {
    return _ffi.parseCode(path: path);
  }
}
