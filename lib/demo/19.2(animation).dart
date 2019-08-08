import 'package:flutter/material.dart';
class AnimationDemoTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('19.2 animation'),
        elevation: 0.0,
      ),
      body: AnimationDemoHomeTwo(),
    );
  }
}


class AnimationDemoHomeTwo extends StatefulWidget {
  @override
  _AnimationDemoHomeTwoState createState() => _AnimationDemoHomeTwoState();
}

class _AnimationDemoHomeTwoState extends State<AnimationDemoHomeTwo> with TickerProviderStateMixin {

  AnimationController animationDemoController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationDemoController = AnimationController(
      value: 32,
      lowerBound: 32.0,
      upperBound: 100.0,
      duration: Duration(milliseconds: 400),
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
      child: IconButton(
        icon: Icon(Icons.favorite),
        iconSize: animationDemoController.value,
        onPressed: (){
          switch (animationDemoController.status) {
            case AnimationStatus.completed:
              animationDemoController.reverse();
              break;
            default:
              animationDemoController.forward();
          }
        },
      )

    );
  }
}