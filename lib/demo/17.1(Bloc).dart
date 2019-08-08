import 'package:flutter/material.dart';
class BlocDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      bloc: CounterBloc(),


    child: Scaffold(
      appBar: AppBar(
        title: Text("BlocDemo"),
        elevation: 0.0,
      ),
      body: CounterHome(),
      floatingActionButton: CounterActionButton(),
    ),
    );
  }
}

class CounterHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterBloc _counterBloc = CounterProvider.of(context).bloc;
    return Center(
      child: ActionChip(
        label: Text('0'),
        onPressed: (){
          _counterBloc.log();
        },
      ),

    );
  }
}


class CounterActionButton extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    CounterBloc _counterBloc = CounterProvider.of(context).bloc;
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: (){
        _counterBloc.log();
      },
    );
  }
}


class CounterProvider extends InheritedWidget {
  final Widget child;
  final CounterBloc bloc;
  
  CounterProvider({
    this.child,
    this.bloc,
  }) : super(child: child);

  static CounterProvider of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(CounterProvider);

  @override
  bool updateShouldNotify(CounterProvider oldWidget) {
    return true;
  }
}

class CounterBloc{
  void log(){
    print('BLoc');
  }
}


