import 'package:code_helper/app/config/image_config.dart';
import 'package:code_helper/generated/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app/typedef/function.dart';
import 'main_logic.dart';
import 'main_state.dart';

part 'widget/side_navigation.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  final logic = Get.put(MainLogic());
  final state = Get.find<MainLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [
        // 侧边栏区域
        _SideNavigation(
          data: state,
          //点击item
          onItem: (index) => logic.switchTap(index),
          //展开侧边栏
          onUnfold: (isUnfold) => logic.onUnfold(isUnfold),
          //缩放整体布局
          onScale: (isScale) => logic.onScale(isScale),
        ),

        // Expanded占满剩下的空间
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(top: 30),
            child: PageView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.pageList.length,
              itemBuilder: (context, index) => state.pageList[index],
              controller: state.pageController,
            ),
          ),
        ),
      ]),
    );
  }
}
