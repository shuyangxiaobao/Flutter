import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hello_world/demo/19.4(animation).dart';
import 'dart:async';
import '10.material_components.dart';
import '20.1(guojihua).dart';
import 'i18n/i18n_demo.dart';


class Day20Demo extends StatelessWidget {
  const Day20Demo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("20 Flutter移动应用：国际化"),
        elevation: 10.0,
      ),
      body: ListView(
        children: <Widget>[
         ListItem(title: "20.1 Demo201 ",page: Demo201(),),
         ListItem(title: "20.2 I18nDemo ",page: I18nDemo(),),


        ],
      ),

    );
  }
}
