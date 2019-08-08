import 'package:flutter/material.dart';
class AnimationDemoSix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('19.6 animation'),
        elevation: 0.0,
      ),
      body: AnimationDemoHomeSix(),
    );
  }
}


class AnimationDemoHomeSix extends StatefulWidget {
  @override
  _AnimationDemoHomeSixState createState() => _AnimationDemoHomeSixState();
}

class _AnimationDemoHomeSixState extends State<AnimationDemoHomeSix> with TickerProviderStateMixin {

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
    // animationDemoController.addListener((){
    //   print('${animationDemoController.value} ${i++}');
    //   setState(() {       
    //   });
    // });
    // // animationDemoController.forward();
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
      child: AnimatedHeart(animations: [
        animation,animationColor
      ],
      controller: animationDemoController,
      )

    );
  }
}


class AnimatedHeart extends AnimatedWidget{
  final List animations;
  final AnimationController controller;

  AnimatedHeart({
    this.animations,
    this.controller,
  }): super(listenable:controller);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return IconButton(
        icon: Icon(Icons.favorite),
        iconSize: animations[0].value,
        color: animations[1].value,
        onPressed: (){
          switch (controller.status) {
            case AnimationStatus.completed:
              controller.reverse();
              break;
            default:
              controller.forward();
          }
        },
      );
  }
}