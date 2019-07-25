import 'package:flutter/material.dart';
class StateManagementFour extends StatefulWidget{
  _StateManagementFourState createState() => _StateManagementFourState();
   
  }
  
  class _StateManagementFourState extends State<StateManagementFour>{
     int _count = 0;
    void _inscreaseCount() {
      setState(() {
        _count += 1;
        print('$_count');
      });
    }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("14.3 状态管理"),
        elevation: 0.0,
      ),
      body:CounterWrapper(_count,_inscreaseCount),

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

class CounterWrapper extends StatelessWidget{
  final int count;
  final VoidCallback increaseCount;
  CounterWrapper(this.count,this.increaseCount);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Counter(count, increaseCount),
    );
  }
}

class Counter extends StatelessWidget {
  final int count;
  final VoidCallback increaseCount;

  Counter(this.count,this.increaseCount);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ActionChip(
          label: Text('$count'),
          onPressed: increaseCount,
        ),
      ),
    );
  }
}








