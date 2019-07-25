import 'package:flutter/material.dart';
class StateManagementOne extends StatefulWidget{
  _StateManagementOneState createState() => _StateManagementOneState();
   
  }
  
  class _StateManagementOneState extends State<StateManagementOne>{
     int _count = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("14.1 状态管理"),
        elevation: 0.0,
      ),
      body: Center(
        child: Chip(
          label: Text('$_count'),
        ),
      ),
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








