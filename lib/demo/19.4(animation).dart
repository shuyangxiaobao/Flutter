import 'package:flutter/material.dart';
class AnimationDemoFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('19.4 animation'),
        elevation: 0.0,
      ),
      body: AnimationDemoHomeFour(),
    );
  }
}


class AnimationDemoHomeFour extends StatefulWidget {
  @override
  _AnimationDemoHomeFourState createState() => _AnimationDemoHomeFourState();
}

class _AnimationDemoHomeFourState extends State<AnimationDemoHomeFour> with TickerProviderStateMixin {

  AnimationController animationDemoController;
  Animation animation;
  Animation animationColor;
  CurvedAnimation curve;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationDemoController = AnimationController(
      // value: 32,
      // lowerBound: 32.0,
      // upperBound: 100.0,
      duration: Duration(milliseconds: 1000),
      vsync: this,
    );
    curve = CurvedAnimation(parent: animationDemoController,curve: Curves.bounceOut);

    animation = Tween(begin: 32.0, end: 100.0).animate(curve);
    animationColor = ColorTween(begin: Colors.red,end: Colors.red[900]).animate(curve);


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
        iconSize: animation.value,
        color: animationColor.value,
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