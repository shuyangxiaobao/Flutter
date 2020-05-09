import 'package:flutter/material.dart';
import 'demo/10.material_components.dart';
import 'main.dart';
import 'demo/8.navigator_demo.dart';
import 'demo/9.form_demo.dart';
import 'demo/10.material_components.dart';
import 'demo/11.Day11Demo.dart';
import 'demo/12.Day12Demo.dart';
import 'demo/13.Day13Demo.dart';
import 'demo/14.Day14Demo.dart';
import 'demo/15.Day15Demo.dart';
import 'demo/16.Day16Demo.dart';
import 'demo/17.Day17Demo.dart';
import 'demo/18.Day18demo.dart';
import 'demo/19.Day19demo.dart';
import 'demo/20.Day20demo.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'demo/20.bao_demo_localizations.dart';
import 'demo/20.ninghao_demo_localizations.dart';
import '21/21.TestDemo.dart';
 class Entrance extends StatelessWidget {
   const Entrance({Key key}) : super(key: key);
   @override
   Widget build(BuildContext context) {
     return Scaffold(
             body: ListView(
        children: <Widget>[
          ListItem(title: "Home22",page:Home(),),
          ListItem(title: "about",page:Page2(title: "关于",),),
          ListItem(title: "10.mdc",page: MaterialComponents(),),
          ListItem(title: "11 Flutter 移动应用：输入",page: Day11Demo(),),
          ListItem(title: "12 Flutter 移动应用：对话框",page: Day12Demo(),),
          ListItem(title: "13 Flutter移动应用：MDC",page: Day13Demo(),),
          ListItem(title: "14 Flutter 移动应用：状态管理",page: Day14Demo(),),
          ListItem(title: "15 Flutter 移动应用：Stream",page: Day15Demo(),),
          ListItem(title: "16 Flutter 移动应用：RxDart",page: Day16Demo(),),
          ListItem(title: "17 Flutter 移动应用：BLoC",page: Day17Demo(),),
          ListItem(title: "18 Flutter 移动应用：网络请求",page: Day18Demo(),),
          ListItem(title: "19 Flutter 移动应用：动画",page: Day19Demo(),),
          ListItem(title: "20 Flutter移动应用：国际化",page: Day20Demo(),),
          ListItem(title: "21 单元测试",page: Day21Demo(),)
,

        ],
      ),
    );
   }
 }