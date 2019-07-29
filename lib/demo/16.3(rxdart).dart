import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
 import 'dart:async';

class RXDartDemoThree extends StatelessWidget {
  const RXDartDemoThree({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("16.3 Rxdart demo"),
        elevation: 0.0,
      ),
      body: RXDartDemoThreeHome(),

    );
  }
}

class RXDartDemoThreeHome extends StatefulWidget {
  RXDartDemoThreeHome({Key key}) : super(key: key);

  _RXDartDemoThreeHomeState createState() => _RXDartDemoThreeHomeState();
}

class _RXDartDemoThreeHomeState extends State<RXDartDemoThreeHome> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BehaviorSubject<String> _subject = BehaviorSubject<String>();

    // _subject.listen((data) => print("listen 1: $data"));
    // _subject.add("hello000");
    // _subject.listen((data) => print("listen 2: $data"));
    // _subject.add("hello111");

        _subject.add("hello000");
        _subject.add("hello111"); //只有最后一条可以收到
        _subject.listen((data) => print("listen 1: $data"));
        _subject.listen((data) => print("listen 2: $data"));
        _subject.listen((data) => print("listen 3: $data"));
 

    _subject.close();


    
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}