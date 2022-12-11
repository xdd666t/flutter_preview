import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

import 'app/config/init_config.dart';
import 'app/config/route_config.dart';
import 'app/helper/getx_route_observer.dart';

void main() {
  // 解决启动白屏问题 或 Flutter2.5+首屏页面复杂，导致的加载异常问题
  // main()方法并不是在Flutter给physicalSize赋值后才运行的，
  // 这就导致部分机型性能比较好，还没赋值屏幕大小就可能启动渲染界面了。
  // 如果size为有数值，监听测量回调，在回调中runApp
  appReady() {
    if (!window.physicalSize.isEmpty) {
      window.onMetricsChanged = null;
      runApp(const MyApp());
      initWindow();
    }
  }

  if (window.physicalSize.isEmpty) {
    window.onMetricsChanged = appReady;
  } else {
    appReady();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: RouteConfig.main,
      // home: TestPage(),
      getPages: RouteConfig.getPages,
      navigatorObservers: [FlutterSmartDialog.observer, GetXRouteObserver()],
      builder: FlutterSmartDialog.init(),
    );
  }
}
