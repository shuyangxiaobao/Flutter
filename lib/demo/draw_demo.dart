import 'package:flutter/material.dart';
class DrawDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Drawer(
         child: ListView(
           padding: EdgeInsets.zero,
           children: <Widget>[
            //  DrawerHeader(
            //    child: Text('header'.toUpperCase()),
            //    decoration: BoxDecoration(
            //      color: Color(0xff666666)
            //    ),
            //  ),

            UserAccountsDrawerHeader(
              accountName: Text('geqiangbao Head', style: TextStyle(fontWeight: FontWeight.w900),),
              accountEmail: Text('xiaolaopo@qq.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562761580457&di=10bd1cee93032866c2fe9ff6e578c3bc&imgtype=0&src=http%3A%2F%2Fimage.haha.mx%2F2018%2F09%2F18%2Fmiddle%2F2783764_dadc89ccdcc5366a829f3b1da426c8aa_1537242721.jpg'),
              ),
              decoration: BoxDecoration(
                color: Color(0xffff4f00),
                image: DecorationImage(
                  image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562823809373&di=ebed395f79d6ceef7f24ae49eb9ec778&imgtype=0&src=http%3A%2F%2Fpic27.nipic.com%2F20130312%2F9402506_175902292125_2.jpg"),
                  fit:BoxFit.cover, //图像填充
                  colorFilter:ColorFilter.mode(
                    Colors.purple[300].withOpacity(0.1),
                    BlendMode.srcOver,
                  )  
                )  
              )//背景              
            ),


             ListTile(
               title: Text('Message', textAlign: TextAlign.left,),
               trailing: Icon(Icons.message, color: Color(0xff7878ff),size: 30,),
               subtitle: Text('subtitle', textAlign: TextAlign.left,),
               onTap: () => Navigator.pop(context), //关闭抽屉
             ),
              ListTile(
               title: Text('more', textAlign: TextAlign.left,),
               trailing: Icon(Icons.more, color: Color(0xff7878ff),size: 30,),
               subtitle: Text('subtitle', textAlign: TextAlign.left,),
               onTap: () => Navigator.pop(context), //关闭抽屉


             )
           ],
         ),
       );
  }
}