import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hello_world/demo/19.4(animation).dart';
import 'dart:async';
import '10.material_components.dart';
import '19.1(animation).dart';
import '19.2(animation).dart';
import '19.3(animation).dart';
import '19.4(animation).dart';

import '19.5(animation).dart';
import '19.6(animation).dart';

class Day19Demo extends StatelessWidget {
  const Day19Demo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("19 Flutter 移动应用：动画"),
        elevation: 10.0,
      ),
      body: ListView(
        children: <Widget>[
         ListItem(title: "19.1 AnimationDemo ",page: AnimationDemo(),),
         ListItem(title: "19.2 AnimationDemo ",page: AnimationDemoTwo(),),
         ListItem(title: "19.3 AnimationDemo ",page: AnimationDemoThree(),),
         ListItem(title: "19.4 AnimationDemo ",page: AnimationDemoFour(),),
          ListItem(title: "19.5 AnimationDemo ",page: AnimationDemoFive(),),
          ListItem(title: "19.6 AnimationDemo ",page: AnimationDemoSix(),),

        ],
      ),

    );
  }
}
