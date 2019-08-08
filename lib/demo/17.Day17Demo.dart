import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';
import '10.material_components.dart';
import '17.1(Bloc).dart';
class Day17Demo extends StatelessWidget {
  const Day17Demo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Day17Demo"),
        elevation: 10.0,
      ),
      body: ListView(
        children: <Widget>[
         ListItem(title: "17.1 BlocDemo ",page: BlocDemo(),),

        ],
      ),

    );
  }
}
