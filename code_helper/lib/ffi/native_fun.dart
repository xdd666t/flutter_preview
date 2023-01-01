import 'native_ffi.dart';
import 'rust_ffi/rust_ffi.dart';

class NativeFun {
  NativeFun._();

  static final _ffi = RustFfiImpl(NativeFFI.dyLib);

  static Future<int> add(int left, int right) async {
    int sum = await _ffi.add(left: left, right: right);
    return sum;
  }

  static Future<int> selfAdd(int num) async {
    int sum = await _ffi.selfAdd(num: num);
    return sum;
  }

  static Stream<ParseEntity> parseCode(String path) {
    return _ffi.parseCode(path: path);
  }
}
