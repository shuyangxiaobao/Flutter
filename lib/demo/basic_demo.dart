import 'package:flutter/material.dart';
class BasicDemo extends StatelessWidget{




  @override
  Widget build(BuildContext context) {
    // TODO: implement build

//         return Textdemo1();
    // return RichTextDemo1();
    return ContainerDemo();

    
    
    


   



    
  }
}




class Textdemo1 extends StatelessWidget{
    final TextStyle _xlptestStyle = TextStyle(
    fontSize: 19.0
    );
    final String _author = '李白';
    final String _title = '将进酒';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
    Text('<$_author> ----- $_title 哈是的空间还是看的风景好阿萨德和罚款技术黄达发空间上的合法会计师黄达分开就啊说黄达分开就啊是哈是的空间还是看的风景好阿萨德和罚款技术黄达发空间上的合法会计师黄达分开就啊说黄达分开就啊是哈是的空间还是看的风景好阿萨德和罚款技术黄达发空间上的合法会计师黄达分开就啊说黄达分开就啊是',
    textAlign:TextAlign.left ,
    style: _xlptestStyle,
    maxLines: 3,
    overflow: TextOverflow.ellipsis,   //ellipsis(省略)  clip(剪切) fade()
    );
  }
}

class RichTextDemo1 extends StatelessWidget{
    final TextStyle _xlptestStyle = TextStyle(
    fontSize: 19.0
    );
    final String _author = '李白';
    final String _title = '将进酒';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  RichText(
      text: TextSpan(
        text: 'geqiangbao',
        style: TextStyle(
          color: Color(0xff454567),
          fontSize: 34,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w100,

        ),
        children: [
          TextSpan(
            text: '.net',
            style: TextStyle(
              color: Colors.grey,
            )
          ),
          TextSpan(
            text: 'ios',
            style: TextStyle(
              color: Colors.red,
            )
          )
        ]
      ),
    );  
  }
}


class ContainerDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      // color: Colors.redAccent[100],
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562909314435&di=d8ffaafa2bd5e07420c6aed644b96cfe&imgtype=0&src=http%3A%2F%2Fpic27.nipic.com%2F20130313%2F9356417_080721123000_2.jpg"),
          alignment: Alignment.bottomCenter,
          fit: BoxFit.fill,
          colorFilter: ColorFilter.mode(
            Color(0x78ffff00), 
            BlendMode.hardLight)
        ),
      
      ),

      child: Row(
      mainAxisAlignment: MainAxisAlignment.center,  //主轴
      crossAxisAlignment: CrossAxisAlignment.start,  //侧轴
        children: <Widget>[
          Container(
            child: Icon(Icons.add, size: 32.0,color: Colors.white,),
            padding: EdgeInsets.all(0.0),
            margin: EdgeInsets.all(0.0),
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              color: Color(0xff779700),
              border: Border.all(
                color: Colors.red,
                width: 3.0,
                style: BorderStyle.solid,
              ),
              // borderRadius: BorderRadius.all(Radius.elliptical(20, 30)), //椭圆
                // borderRadius: BorderRadius.all(Radius.circular(30)),  // 四个角圆角
                // borderRadius: BorderRadius.circular(40), // 四个角圆角

                // 四个角分别设置圆角
                // borderRadius: BorderRadius.only(
                //   bottomLeft: Radius.circular(10),
                //   topLeft: Radius.circular(20),
                //   bottomRight: Radius.circular(45),
                //   topRight: Radius.circular(45),
                // ),

                // 阴影
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0.0, 10.0), //阴影偏移
                    color: Color.fromRGBO(16, 20, 199, 1.0),
                    blurRadius: 90.0,    //阴影模糊程度
                    spreadRadius: 1.0,  //阴影扩大减小
                  )
                ],
                shape: BoxShape.circle,  //盒子形状 注意：和设置圆角有冲突
                // 颜色渐变
                gradient: LinearGradient(
                  colors: [
                    Color(0xffff0000),
                    Color(0xff00ff00),
                  ],
                  // begin: Alignment(0, 0),
                  // end: Alignment(90, 90),

                  begin: Alignment.bottomRight,
                  end: Alignment.bottomLeft

                )

                

            ),

          ),
           Container(
            child: Icon(Icons.add, size: 32.0,color: Colors.white,),
            color: Color(0xffff0000),
            padding: EdgeInsets.all(0.0),
            margin: EdgeInsets.all(10.0),
            width: 90,
            height: 90,

          )
        ],
      ),
    );
  }
}

//mark: 3w2434