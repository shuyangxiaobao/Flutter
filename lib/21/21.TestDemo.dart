import 'package:flutter/material.dart';

class Day21Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('21 单元测试'),
        elevation: 0.0,
      ),
      body: TestDemoHome(),
    );
  }
}

class TestDemoHome extends StatefulWidget {
  @override
  _TestDemoHomeState createState() => _TestDemoHomeState();
}

class _TestDemoHomeState extends State<TestDemoHome> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Chip(
          label: Text('hello'),
        ),
        ActionChip(
          key: Key('actionChip'),
          label: Text('$count',
            key: Key('actionChipLabletext'),
          ),
          onPressed: (){
            setState(() {
              count++;
            });
          },
        )
      ],
    );
  }
}




class NinghaoTestDemo{
  static greet(String name){
    return 'hello $name';
  }
}