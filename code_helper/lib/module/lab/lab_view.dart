import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'lab_logic.dart';

class LabPage extends StatelessWidget {
  const LabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(LabLogic());
    final state = Get.find<LabLogic>().state;

    return const Center(child: Text("实验室"));
  }
}
