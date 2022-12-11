import 'package:code_helper/ffi/native_fun.dart';
import 'package:get/get.dart';

import 'code_scan_state.dart';

class CodeScanLogic extends GetxController {
  final CodeScanState state = CodeScanState();

  void incrementCounter() async {
    state.count = await NativeFun.selfAdd(state.count);
    update();
  }
}
