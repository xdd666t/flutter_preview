import 'package:bitsdojo_window/bitsdojo_window.dart';
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
      backgroundColor: Colors.white,
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
          child: Column(children: [
            // 拖拽区域
            SizedBox(
              height: 30,
              width: double.maxFinite,
              child: Stack(children: [
                MoveWindow(),
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  MinimizeWindowButton(),
                  MaximizeWindowButton(),
                  CloseWindowButton(),
                ])
              ]),
            ),

            Expanded(
              child: PageView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: state.pageList.length,
                itemBuilder: (context, index) => state.pageList[index],
                controller: state.pageController,
              ),
            ),
          ]),
        )
      ]),
    );
  }
}
