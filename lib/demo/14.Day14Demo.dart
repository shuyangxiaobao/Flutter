import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';
import '10.material_components.dart';
import '14.6state_management_demo.dart';
import '14.1management_demo.dart';
import '14.2(managementDemo).dart';
import '14.3(managemant).dart';
import '14.4(management).dart';
import '14.5(management).dart';

class Day14Demo extends StatelessWidget {
  const Day14Demo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Day14Demo"),
        elevation: 10.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(title: "14.1 状态管理",page: StateManagementOne(),),
          ListItem(title: "14.2 状态管理",page: StateManagementTwo(),),
          ListItem(title: "14.3 状态管理",page: StateManagementThree(),),
          ListItem(title: "14.4 状态管理",page: StateManagementFour(),),
          ListItem(title: "14.5 状态管理",page: StateManagementFive(),),
          ListItem(title: "14.6 ScopedModel",page: StateManagementDemo(),),
        ],
      ),

    );
  }
}
