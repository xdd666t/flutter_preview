import 'package:code_helper/module/code_scan/code_scan_view.dart';
import 'package:code_helper/module/lab/lab_view.dart';
import 'package:flutter/cupertino.dart';

import '../../app/ui/keep_alive_page.dart';
import '../../entity/common/btn_info.dart';
import '../setting/setting_view.dart';

class MainState {
  ///选择index
  late int selectedIndex;

  ///控制是否展开
  late bool isUnfold;

  ///是否缩放
  late bool isScale;

  ///Navigation的item信息
  late List<BtnInfo> sideItems;

  ///PageView页面
  late List<Widget> pageList;
  late PageController pageController;

  MainState() {
    //初始化index
    selectedIndex = 0;
    //默认不展开
    isUnfold = false;
    //默认不缩放
    isScale = false;
    //PageView页面
    pageList = [
      const KeepAlivePage(child: CodeScanPage()),
      const KeepAlivePage(child: LabPage()),
      const KeepAlivePage(child: SettingPage()),
    ];

    //item栏目
    sideItems = [
      BtnInfo(
        title: "代码扫描",
        icon: const Icon(CupertinoIcons.app_badge),
      ),
      BtnInfo(
        title: "实验室",
        icon: const Icon(CupertinoIcons.arrow_3_trianglepath),
      ),
      BtnInfo(
        title: "设置",
        icon: const Icon(CupertinoIcons.settings),
      ),
    ];
    //页面控制器
    pageController = PageController();
  }
}
