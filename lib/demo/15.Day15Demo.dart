import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';
import '10.material_components.dart';
import '15.1stream_demo.dart';
import '15.1(stream).dart';
import '15.2(stream).dart';

import '15.3(stream).dart';

class Day15Demo extends StatelessWidget {
  const Day15Demo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Day15Demo"),
        elevation: 10.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(title: "15.1 StreamDemo ",page: StreamDemoOne(),),
          ListItem(title: "15.2 StreamDemo ",page: StreamDemoTwo(),),

          ListItem(title: "15.3 StreamDemo ",page: StreamDemoThree(),),

          ListItem(title: "15.1 StreamDemo ",page: StreamDemo(),),

          

        ],
      ),

    );
  }
}
