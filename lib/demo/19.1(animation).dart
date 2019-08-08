import 'package:flutter/material.dart';
class AnimationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('19.1 animation'),
        elevation: 0.0,
      ),
      body: AnimationDemoHome(),
    );
  }
}


class AnimationDemoHome extends StatefulWidget {
  @override
  _AnimationDemoHomeState createState() => _AnimationDemoHomeState();
}

class _AnimationDemoHomeState extends State<AnimationDemoHome> with TickerProviderStateMixin {

  AnimationController animationDemoController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationDemoController = AnimationController(
      value: 32,
      lowerBound: 0.0,
      upperBound: 100.0,
      duration: Duration(milliseconds: 4000),
      vsync: this,
    );
var i = 0;
    animationDemoController.addListener((){
      
      print('${animationDemoController.value} ${i++}');
      setState(() {
        
      });
    });
    // animationDemoController.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationDemoController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: ActionChip(
        label: Text('${animationDemoController.value}'),
        onPressed: (){
          animationDemoController.forward();
        },
      ),

    );
  }
}