import 'package:flutter/material.dart';
class AnimationDemoThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('19.3 animation'),
        elevation: 0.0,
      ),
      body: AnimationDemoHomeThree(),
    );
  }
}


class AnimationDemoHomeThree extends StatefulWidget {
  @override
  _AnimationDemoHomeThreeState createState() => _AnimationDemoHomeThreeState();
}

class _AnimationDemoHomeThreeState extends State<AnimationDemoHomeThree> with TickerProviderStateMixin {

  AnimationController animationDemoController;
  Animation animation;
    Animation animationColor;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationDemoController = AnimationController(
      // value: 32,
      // lowerBound: 32.0,
      // upperBound: 100.0,
      duration: Duration(milliseconds: 400),
      vsync: this,
    );
    animation = Tween(begin: 32.0, end: 100.0).animate(animationDemoController);
    animationColor = ColorTween(begin: Colors.red,end: Colors.red[900]).animate(animationDemoController);

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