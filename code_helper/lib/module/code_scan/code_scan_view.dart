import 'package:code_helper/app/typedef/function.dart';
import 'package:code_helper/module/code_scan/code_scan_state.dart';
import 'package:desktop_drop/desktop_drop.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'code_scan_logic.dart';

part 'widget/select_file.dart';

class CodeScanPage extends StatelessWidget {
  const CodeScanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(CodeScanLogic());
    final state = Get.find<CodeScanLogic>().state;

    return Column(children: [
      _SelectFile(
        data: state,
        //选择文件
        onSelect: () => logic.onSelect(),
        //拖拽文件
        onDragFile: (DropDoneDetails details) => logic.onDragFile(details),
      ),
    ]);
  }
}
