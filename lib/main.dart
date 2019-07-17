import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:hello_world/demo/9.form_demo.dart';
import 'model/post.dart';
import 'demo/listview_demo.dart';
import 'demo/hello_demo.dart';
import 'demo/draw_demo.dart';
import 'demo/bottom_navigation_bar_demo.dart';
import 'demo/basic_demo.dart';
import 'demo/layout_demo.dart';
import 'demo/7_view_demo.dart';
import 'demo/7.sliver_demo.dart';
import 'demo/8.navigator_demo.dart';
import 'entrance.dart';
void main(){
  runApp(App()
   
  );
}


// StatelessWidget (不需要修改部件)
// StatefulWidget(需要修改部件)
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  MaterialApp(
      debugShowCheckedModeBanner: false, //关闭debug 标识
      // home: Home(),
      // home: NavigatorDemo(),
      // home: SliverDemo(),
      home: Entrance(),
      initialRoute: 'www',
      routes: {
        '/home': (context) => Home(),
        '/about':(context) => Page(title: "关于"),
        '/form':(context) => FormDemo(),

      },
      theme: ThemeData(
        primarySwatch: Colors.orange, //导航栏颜色
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.red,
        accentColor: Colors.purple,

      )
    );
  }
}
 
 
class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 5,
      child: Scaffold(
      // backgroundColor: Colors.blue,
      appBar: AppBar( //顶部工具栏
      // leading: IconButton(
      //     icon: Icon(Icons.menu),
      //     tooltip: 'Navigation',
      //     onPressed: () => debugPrint('Navigation button is pressed'),
      //   ),
      actions: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back),
              tooltip: "Search",
              onPressed:(){
                Navigator.pop(context);
              }
            ),
             IconButton(
              icon: Icon(Icons.send),
              tooltip: "Search",
              onPressed: ()=> debugPrint("send ...."),
            ),
            
          ],
      title: Text('小妞'),
      elevation: 0.0,//阴影
      backgroundColor: Colors.orange, //导航栏颜色
      bottom: TabBar(
        // unselectedLabelColor: Color.fromARGB(0, 23, 255, 255),
        unselectedLabelColor: Color(0xff00ffff), //标签未选中颜色
        indicatorColor: Color.fromRGBO(0, 255, 0, 1.0), // 下划线颜色
        indicatorSize: TabBarIndicatorSize.label, //下划线宽度
        indicatorWeight: 2, //下划线高度


        tabs: <Widget>[
          Tab(icon: Icon(Icons.mic)),
          Tab(icon: Icon(Icons.settings_brightness)),
          Tab(icon: Icon(Icons.mode_edit)),
          Tab(icon: Icon(Icons.view_quilt)),
          Tab(icon: Icon(Icons.title)),



        ],
      ),


        ),
        body:TabBarView(
          children: <Widget>[
            ListViewDemo(),
            BasicDemo(),
            LayoutDemo(),
            ViewDemo(),
            SliverDemo(),
          ],
        ),
       drawer:DrawDemo(),

        // drawer: Text('左抽屉'),//抽屉
        endDrawer: Text('右抽屉'),//抽屉

// 底部导航栏
        bottomNavigationBar: BottomNavigationBarDemo()

      
      ),
    );


  }
}



