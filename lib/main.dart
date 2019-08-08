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
import 'demo/10.material_components.dart';
import 'demo/11.Day11Demo.dart';
import 'demo/12.Day12Demo.dart';
import 'demo/13.Day13Demo.dart';
import 'demo/14.Day14Demo.dart';
import 'demo/15.Day15Demo.dart';
import 'demo/16.Day16Demo.dart';
import 'demo/17.Day17Demo.dart';
import 'demo/18.Day18demo.dart';
import 'demo/19.Day19demo.dart';
import 'demo/20.Day20demo.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'demo/20.bao_demo_localizations.dart';
import 'demo/20.ninghao_demo_localizations.dart';
// import 'demo/i18n/intl/ninghao_demo_localizations.dart';

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
      // locale: Locale('zh','CN'), //设置语言
      // locale: Locale('en','US'),


//设置语言 (优先级更高)
      localeResolutionCallback: (Locale locale, Iterable<Locale> supportedLocale){
        return Locale('zh','CN');
        // return Locale('en','US');
      },

      localizationsDelegates: [
        // GeqiangbaoLocationsDelegate(),
        NinghaoDemoLocalizationsDelegate(),
       GlobalMaterialLocalizations.delegate,
       GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en','US'),
        Locale('zh','CN'),
      ],


      debugShowCheckedModeBanner: false, //关闭debug 标识
      home: Entrance(),
      // initialRoute: '/day11demo',
      routes: {
        '/home': (context) => Home(),
        '/about':(context) => Page(title: "关于"),
        '/form':(context) => FormDemo(),
        '/mdc':(context) => MaterialComponents(),
        '/day11demo':(context) => Day11Demo(),
        '/day12demo':(context) => Day12Demo(),
        '/day13demo':(context) => Day13Demo(),
        '/day14demo':(context) => Day14Demo(),
        '/day15demo':(context) => Day15Demo(),
        '/day16demo':(context) => Day16Demo(),
        '/day17demo':(context) => Day17Demo(),
        '/day18demo':(context) => Day18Demo(),
        '/day19demo':(context) => Day19Demo(),
        '/day20demo':(context) => Day20Demo(),

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



