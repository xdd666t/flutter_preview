import 'dart:io';

import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class InitConfig {
  static initApp() async {}
}

Future initWindow({double scale = 1.0}) async {
  if (!_jumpPlatform()) {
    return;
  }

  doWhenWindowReady(() {
    final width = 900.0 * scale;
    final height = 600.0 * scale;
    var initialSize = Size(width, height);
    var app = appWindow;
    app.minSize = initialSize;
    app.maxSize = initialSize;
    app.size = initialSize;
    app.alignment = Alignment.center;
    app.show();
  });
}

bool _jumpPlatform() {
  if (kIsWeb) return false;

  if (Platform.isMacOS ||
      Platform.isWindows ||
      Platform.isFuchsia ||
      Platform.isWindows) {
    return true;
  }
  return false;
}
