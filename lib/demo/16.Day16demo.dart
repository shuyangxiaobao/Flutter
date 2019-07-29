import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';
import '10.material_components.dart';
import '16.1(rxdart).dart';
import '16.2(rxdart).dart';
import '16.3(rxdart).dart';
import '16.4(rxdart).dart';

import '16.5(rxdart).dart';
class Day16Demo extends StatelessWidget {
  const Day16Demo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Day16Demo"),
        elevation: 10.0,
      ),
      body: ListView(
        children: <Widget>[
         ListItem(title: "16.1 RXDartDemo ",page: RXDartDemo(),),

         ListItem(title: "16.2 RXDartDemo ",page: RXDartDemoTwo(),),

         ListItem(title: "16.3 RXDartDemo ",page: RXDartDemoThree(),),
          
         ListItem(title: "16.4 RXDartDemo ",page: RXDartDemoFour(),),

         ListItem(title: "16.5 RXDartDemo ",page: RXDartDemoFive(),),
        ],
      ),

    );
  }
}
