import 'package:flutter/material.dart';
class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // return  LayoutDemo2019();
    // return AspectRatioDemo();
    return ConstrainedBoxDemo();
  }
}


// 
class ConstrainedBoxDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 100,
              maxWidth: 100,
              // minWidth: 200,
            ),
            child: Container(
              color: Color(0xff787800),
            ),
          )
         
        ],

      ),
      
    );;
  }
}

class AspectRatioDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 12.0/6.0,
            child: Container(
              color: Color(0xff98f078),
            ),
          )
          
        ],

      ),
      
    );;
  }
}




class LayoutDemo2019 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Stack(
            // alignment: Alignment.centerRight,
            children: <Widget>[
          SizedBox(
            width: 100,
            height: 100,
            child: Container(
              alignment: Alignment(0.0, -0.9),
              decoration: BoxDecoration(
                color: Color(0xff0000ff),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Icon(Icons.ac_unit,color: Colors.white,size:22.0,),
            ),
          ),
            SizedBox(
            width: 40,
            height: 30,
            child: Container(
              alignment: Alignment(0.0, 0.0),
              decoration: BoxDecoration(
                color: Color(0xffff0000), //红色
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Icon(Icons.brightness_2,color: Colors.white,size:22.0,),
            ),
          ),
          Positioned(
            right: 25,
            bottom: 25,
            child:  SizedBox(
                    width: 40,
                    height: 40,
                    child: Container(
                      alignment: Alignment(0.0, 0.0),
                      decoration: BoxDecoration(
                        color: Color(0xffff0000), //红色
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Icon(Icons.brightness_2,color: Colors.white,size:22.0,),
                    ),
                  ),
          ),
          Positioned(
            right: 20,
            bottom: -10,
            child: Icon(Icons.ac_unit,color: Colors.white,size:16.0,),
          ),
           Positioned(
            right: 10,
            bottom: 10,
            child: Icon(Icons.ac_unit,color: Colors.white,size:16.0,),
          ),
           Positioned(
            left: 0,
            top: 0,
            child: Icon(Icons.ac_unit,color: Colors.white,size:16.0,),
          ),
           
            ],
          ),
         

        ],
      ),
    );;
  }
}




class IconBadge extends StatelessWidget{
  final IconData icon;
  final IconData icon2;

  final double size;
  final double xlpsize;

  //有初始化的放在  {} 里面，调用时是可选的， icon，icon2 为未初始化调用时必须赋值
  IconBadge(this.icon,this.icon2,{
    this.xlpsize = 20,
    this.size = 30
  });


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(icon2,size: size, color: Colors.white,),
      width: size + 60,
      height: size + 60,
      color: Color(0xff0336ff),
    );
  }
}