import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
 import 'dart:async';

class RXDartDemoFive extends StatelessWidget {
  const RXDartDemoFive({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("16.5 Rxdart demo"),
        elevation: 0.0,
      ),
      body: RXDartDemoFiveHome(),

    );
  }
}

class RXDartDemoFiveHome extends StatefulWidget {
  RXDartDemoFiveHome({Key key}) : super(key: key);

  _RXDartDemoFiveHomeState createState() => _RXDartDemoFiveHomeState();
}

class _RXDartDemoFiveHomeState extends State<RXDartDemoFiveHome> {

  PublishSubject<String> _textFiledSubject;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textFiledSubject = PublishSubject<String>();
    // _textFiledSubject.listen((data) => print(data));

      // _textFiledSubject.map(
      //   (item) => 'item: $item'
      // ).listen((data) => print(data));

      // _textFiledSubject
      // .where((item) => item.length > 9)
      // .listen((data) => print(data));

      _textFiledSubject
      .debounce(Duration(milliseconds: 500))  //停止输入500毫秒后打印到控制台
      .listen((data) => print(data));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _textFiledSubject.close();
    
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data:Theme.of(context).copyWith(
        primaryColor: Colors.black,
      ) ,
      child: TextField(
        onChanged: (value){
          _textFiledSubject.add('input:$value');
        },
        onSubmitted: (value){
          _textFiledSubject.add('submit:$value');
        },
        decoration: InputDecoration(
          labelText: 'Title',
          filled: true,
        ),
      ),
      

    );
  }
}