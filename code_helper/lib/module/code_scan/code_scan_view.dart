import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'code_scan_logic.dart';

class CodeScanPage extends StatelessWidget {
  const CodeScanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(CodeScanLogic());
    final state = Get.find<CodeScanLogic>().state;

    return Scaffold(
      body: Center(
        child: GetBuilder<CodeScanLogic>(builder: (logic) {
          return Text(
            'Count:  ${state.count}',
            style: Theme.of(context).textTheme.headline4,
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => logic.incrementCounter(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
