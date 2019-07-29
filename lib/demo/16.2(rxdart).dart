import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
 import 'dart:async';

class RXDartDemoTwo extends StatelessWidget {
  const RXDartDemoTwo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("16.2 Rxdart demo"),
        elevation: 0.0,
      ),
      body: RXDartDemoTwoHome(),

    );
  }
}

class RXDartDemoTwoHome extends StatefulWidget {
  RXDartDemoTwoHome({Key key}) : super(key: key);

  _RXDartDemoTwoHomeState createState() => _RXDartDemoTwoHomeState();
}

class _RXDartDemoTwoHomeState extends State<RXDartDemoTwoHome> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    PublishSubject<String> _subject = PublishSubject<String>();

    _subject.listen((data) => print("listen 1: $data"));
    _subject.add("hello000");

    _subject.listen((data) => print("listen 2: $data"));

    _subject.add("hello111");

    _subject.close();


    
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}