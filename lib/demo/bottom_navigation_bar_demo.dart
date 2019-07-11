import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottomNavigationBarDemoState();
  }
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo>{
  int _currentIndex = 0;

  void _onTapHandler(int index){
    setState((){
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onTapHandler,
          type: BottomNavigationBarType.fixed,
          fixedColor: Color(0xff2121fb), //底部tabbar 选中的颜色
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.exposure),
              title: Text("exposure"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              title: Text("history"),
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("home"),
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.insert_comment),
              title: Text("comment"),
            ),

          ],
        );
  }
}