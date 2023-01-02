import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CodeScanState {
  late int count;

  late RxString path;

  /// 操作信息
  late RxList<String> operateInfoList;
  late ScrollController infoController;

  CodeScanState() {
    this
      ..count = 0
      ..operateInfoList = RxList()
      ..infoController = ScrollController()
      ..path = "".obs;
  }
}
