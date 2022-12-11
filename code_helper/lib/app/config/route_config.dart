
import 'package:get/get.dart';

import '../../module/main/main_view.dart';

class RouteConfig {
  ///主页面
  static const String main = "/";

  ///别名映射页面
  static final List<GetPage> getPages = [
    GetPage(name: main, page: () => MainPage()),
  ];
}
