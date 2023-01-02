import 'dart:math';

import 'package:code_helper/ffi/native_fun.dart';
import 'package:desktop_drop/desktop_drop.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'code_scan_state.dart';

class CodeScanLogic extends GetxController {
  final CodeScanState state = CodeScanState();

  void onSelect() async {
    // 选择文件夹
    final dir = await FilePicker.platform.getDirectoryPath();

    // 选择文件
    // FilePickerResult? result = await FilePicker.platform.pickFiles();
    // var dir = result?.paths.last;
    // if (dir == null) {
    //   return;
    // }

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
    state.path.value = path;

    var sink = NativeFun.parseCode(path);
    sink.listen((event) {
      if (event.status == 0) {
        return;
      }

      var curTime = DateFormat("h:mm:ss").format(DateTime.now());
      state.operateInfoList.add('$curTime   ${event.msg}');

      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        state.infoController.animateTo(
          state.infoController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 100),
          curve: Curves.linear,
        );
      });
    });
  }
}
