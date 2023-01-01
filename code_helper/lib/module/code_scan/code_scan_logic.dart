import 'dart:math';

import 'package:code_helper/ffi/native_fun.dart';
import 'package:desktop_drop/desktop_drop.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'code_scan_state.dart';

class CodeScanLogic extends GetxController {
  final CodeScanState state = CodeScanState();

  void incrementCounter() async {
    state.count = await NativeFun.selfAdd(state.count);
    update();
  }

  void onSelect() async {
    final dir = await FilePicker.platform.getDirectoryPath();
    _handleFile(dir);
  }

  void onDragFile(DropDoneDetails details) {
    var path = details.files.last;
    _handleFile(path.path);
  }

  void _handleFile(String? path) {
    if (path == null) {
      return;
    }
    state.path = path;
    update();

    var sink = NativeFun.parseCode(path);
    sink.listen((event) {
      debugPrint('---------${event.status} ----- ${event.msg}');
    });
  }
}
