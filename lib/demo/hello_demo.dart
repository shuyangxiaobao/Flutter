
import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/widgets.dart';

class Hello extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text('89',
      textDirection: TextDirection.ltr,
      style: TextStyle(
        // color: Colors.yellow,
        fontSize:40.0,
        fontWeight: FontWeight.bold

      ),
      ),
   
    );
  }
}