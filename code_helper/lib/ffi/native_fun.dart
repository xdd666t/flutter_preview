import 'native_ffi.dart';
import 'rust_ffi/rust_ffi.dart';

class NativeFun {
  NativeFun._();

  static final _ffi = RustFfiImpl(NativeFFI.dyLib);

  static Stream<ParseEntity> parseCode(String path) {
    return _ffi.parseCode(path: path);
  }
}
