import 'package:flutter/material.dart';
 class Entrance extends StatelessWidget {
   const Entrance({Key key}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child:  FlatButton(
              child: Text('Home'),
              onPressed: (){
                 Navigator.pushNamed(context, "/home");
              },
            ),
            ),
           

             FlatButton(
              child: Text('about'),
              onPressed: (){
                Navigator.pushNamed(context, "/about");
              },
            ),
            
             FlatButton(
              child: Text('9.form'),
              onPressed: (){
                Navigator.pushNamed(context, "/form");
              },
            ),
              FlatButton(
              child: Text('10.mdc'),
              onPressed: (){
                Navigator.pushNamed(context, "/mdc");
              }, 
            ),
            FlatButton(
              child: Text('11 Flutter 移动应用：输入'),
              onPressed: (){
                Navigator.pushNamed(context, "/day11demo");
              }, 
            ),
          ],
        ),
      ),
    );
   }
 }