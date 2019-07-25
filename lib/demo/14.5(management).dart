import 'package:flutter/material.dart';
class StateManagementFive extends StatefulWidget{
  _StateManagementFiveState createState() => _StateManagementFiveState();
   
  }
  
  class _StateManagementFiveState extends State<StateManagementFive>{
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
    return CounterProvider(
      count: _count,
      increaseCount: _inscreaseCount,
      child: Scaffold(
        appBar: AppBar(
          title: Text("14.3 状态管理"),
          elevation: 0.0,
        ),
        body:CounterWrapper(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            setState(() {
              _count += 1;
            });
            print(_count);
          },
        ),     
      ),
    );
    }
}

class CounterWrapper extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Counter(),
    );
  }
}

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int count = CounterProvider.of(context).count;
    final VoidCallback increaseCount = CounterProvider.of(context).increaseCount;
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

class CounterProvider extends InheritedWidget{
  final int count;
  final VoidCallback increaseCount;
  final Widget child;

  CounterProvider({
    this.count,
    this.increaseCount,
    this.child,
  }):super(child:child);

  static CounterProvider of(BuildContext context)=> context.inheritFromWidgetOfExactType(CounterProvider);


  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return true;
  }
  
}







