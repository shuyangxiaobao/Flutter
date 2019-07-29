import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
 import 'dart:async';

class RXDartDemo extends StatelessWidget {
  const RXDartDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("16.1 Rxdart demo"),
        elevation: 0.0,
      ),
      body: RxDartDemoHome(),

    );
  }
}

class RxDartDemoHome extends StatefulWidget {
  RxDartDemoHome({Key key}) : super(key: key);

  _RxDartDemoHomeState createState() => _RxDartDemoHomeState();
}

class _RxDartDemoHomeState extends State<RxDartDemoHome> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Observable<String> _observable = Observable(Stream.fromIterable(['hello','nihao']));
    // Observable<String> _observable = Observable.fromFuture(Future.value("hello ~"));
    // Observable<String> _observable = Observable.fromIterable(['hello','ninghao']);
    Observable<String> _observable = Observable.just('hello ~');
    // Observable<String> _observable = Observable.periodic(Duration(seconds:3),(x) => x.toString());



    _observable.listen(print);
    
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}