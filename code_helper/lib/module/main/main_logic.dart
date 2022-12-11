import 'package:get/get.dart';

import '../../app/config/init_config.dart';
import 'main_state.dart';

class MainLogic extends GetxController {
  final MainState state = MainState();

  ///切换tab
  void switchTap(int index) {
    state.selectedIndex = index;
    state.pageController.jumpToPage(index);
    update();
  }

  ///是否展开侧边栏
  void onUnfold(bool isUnfold) {
    state.isUnfold = !state.isUnfold;
    update();
  }

  ///是否缩放
  void onScale(bool isScale) {
    state.isScale = !state.isScale;
    update();
    initWindow(scale: isScale ? 1.25 : 1.0);
  }
}
