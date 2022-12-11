import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'code_scan_logic.dart';

class CodeScanPage extends StatelessWidget {
  const CodeScanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(CodeScanLogic());
    final state = Get.find<CodeScanLogic>().state;

    return const Center(child: Text("代码扫描"));
  }
}
