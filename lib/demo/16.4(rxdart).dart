import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
 import 'dart:async';

class RXDartDemoFour extends StatelessWidget {
  const RXDartDemoFour({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("16.3 Rxdart demo"),
        elevation: 0.0,
      ),
      body: RXDartDemoFourHome(),

    );
  }
}

class RXDartDemoFourHome extends StatefulWidget {
  RXDartDemoFourHome({Key key}) : super(key: key);

  _RXDartDemoFourHomeState createState() => _RXDartDemoFourHomeState();
}

class _RXDartDemoFourHomeState extends State<RXDartDemoFourHome> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ReplaySubject<String> _subject = ReplaySubject<String>(maxSize: 30);

    _subject.add("hello000");
    _subject.add("hello111");
    _subject.add("hello2222"); //全部可以收到 通过 maxSize 设置最多可收到的数量
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