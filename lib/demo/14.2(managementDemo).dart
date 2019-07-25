import 'package:flutter/material.dart';
class StateManagementTwo extends StatefulWidget{
  _StateManagementTwoState createState() => _StateManagementTwoState();
   
  }
  
  class _StateManagementTwoState extends State<StateManagementTwo>{
     int _count = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("14.2 状态管理"),
        elevation: 0.0,
      ),
      body:Counter(_count),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            _count += 1;
          });
          print(_count);
        },
      ),


    );
  }
}

class Counter extends StatelessWidget {
  final int count;
  Counter(this.count);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Chip(
          label: Text('$count'),
        ),
      ),
    );
  }
}








