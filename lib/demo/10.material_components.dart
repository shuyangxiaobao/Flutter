import 'package:flutter/material.dart';
class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(title: "FloatingActionButton",page:FloatingActionButtonDemo(),),
          ListItem(title: "Button",page:ButtonDemo(),),
          ListItem(title: "menubutton",page: PopupMenuButtonDemo(),)

        ],
      ),
    );
  }
}





class ButtonDemo extends StatefulWidget {
  ButtonDemo({Key key}) : super(key: key);
  // final Widget __ButtonDemoState = null;

  _ButtonDemoState createState() => _ButtonDemoState();
}

class _ButtonDemoState extends State<ButtonDemo> {
    String _currentMentItem = "Home"; // 必须放在这个位置，否则改变这个变量会导致页面不刷新

  @override
  Widget build(BuildContext context) {

  final Widget buttonDemo1 =  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Theme(
                  data: Theme.of(context).copyWith(
                    buttonColor: Theme.of(context).accentColor,
                    buttonTheme: ButtonThemeData(
                      textTheme: ButtonTextTheme.primary,
                      shape: StadiumBorder()
                    )
                  ),
                  child:  RaisedButton(
                  child: Text("RaisedButton1"),
                  onPressed: (){},
                  splashColor: Colors.grey,//飞溅的颜色
                  textColor: Theme.of(context).accentColor,
                  elevation: 0.0, //阴影效果
                  // color: Colors.orange,
                ),
                ),
               
                FlatButton(
                  child: Text("FlatButton2"),
                  onPressed: (){},
                  splashColor: Colors.grey,//飞溅的颜色
                  textColor: Theme.of(context).accentColor,
                  color: Colors.orange,
                ),
                SizedBox(width: 10,),
              ],
            );

    final Widget buttonDemo2 = Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text("RaisedButton3"),
                  onPressed: (){},
                  splashColor: Colors.grey,//飞溅的颜色
                  textColor: Theme.of(context).accentColor,
                  elevation: 0.0, //阴影效果
                  // color: Colors.orange,
                ),
                SizedBox(width: 10,),
                RaisedButton.icon(
                  // color: Colors.orange,
                  icon: Icon(Icons.add),
                  label: Text("RaisedButton4"),
                  onPressed: (){},
                  splashColor: Colors.red,//飞溅的颜色
                  textColor: Theme.of(context).accentColor,
                  elevation: 10.0,//阴影效果
                )
              ],
            );       

    final Widget buttonDemo3 = Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Theme(
                  data: Theme.of(context).copyWith(
                    buttonColor: Theme.of(context).accentColor,
                    buttonTheme: ButtonThemeData(
                      textTheme: ButtonTextTheme.primary,
                      shape: StadiumBorder()

                    )
                  ),
                  child: OutlineButton(
                  child: Text("OutlineButton"),
                  onPressed: (){},
                  splashColor: Colors.grey,//飞溅的颜色
                  textColor: Theme.of(context).accentColor,
                  highlightedBorderColor: Color(0xfff7ff00), //高亮时边框颜色
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                  // elevation: 0.0, //阴影效果
                  color: Colors.orange,
                ),
                ),

                
                SizedBox(width: 10,),
                RaisedButton.icon(
                  // color: Colors.orange,
                  icon: Icon(Icons.add),
                  label: Text("Button4"),
                  onPressed: (){},
                  splashColor: Colors.red,//飞溅的颜色
                  textColor: Theme.of(context).accentColor,
                  elevation: 10.0,//阴影效果
                )
              ],
            );

    final Widget FixedWidthButton4 = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 100,
          height: 30,
          child: OutlineButton(
            child: Text("button"),
            onPressed: (){},
            splashColor: Colors.grey,
            borderSide: BorderSide(
              color: Colors.black
            ),
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
          ),
        )

      ],

    );
    
    final Widget ExpandButton5 = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: OutlineButton(
            child: Text('button'),
            onPressed: (){},
            splashColor: Color(0xff456745),
            borderSide: BorderSide(
              color: Colors.red
            ),
            textColor: Colors.blue,
            highlightedBorderColor: Color(0xff888802),
          ),

        ),
        SizedBox(width: 10,),
         Expanded(
           flex: 2,
          child: OutlineButton(
            child: Text('button'),
            onPressed: (){},
            splashColor: Color(0xff456745),
            borderSide: BorderSide(
              color: Colors.red
            ),
            textColor: Colors.blue,
            highlightedBorderColor: Color(0xff888802),
          ),

        ),
      ],

    );
   
    final Widget ButtonBarDemo6 = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonTheme: ButtonThemeData(
              padding: EdgeInsets.symmetric(horizontal: 20),
            )
          ),
          child: ButtonBar(
          children: <Widget>[
            OutlineButton(
                  child: Text("OutlineButton"),
                  onPressed: (){},
                  splashColor: Colors.grey,//飞溅的颜色
                  textColor: Theme.of(context).accentColor,
                  highlightedBorderColor: Color(0xfff7ff00), //高亮时边框颜色
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                  // elevation: 0.0, //阴影效果
                  color: Colors.orange,
                ),
                OutlineButton(
                  child: Text("OutlineButton"),
                  onPressed: (){},
                  splashColor: Colors.grey,//飞溅的颜色
                  textColor: Theme.of(context).accentColor,
                  highlightedBorderColor: Color(0xfff7ff00), //高亮时边框颜色
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                  // elevation: 0.0, //阴影效果
                  color: Colors.orange,
                ),

          ],
        ),
        )
      ],

    );

    final Widget PopupmenuButton7 = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(_currentMentItem),
        // PopupMenuButton(
        //   onSelected: (value){
        //     print(value);
        //       _currentMentItem = value;
        //       setState((){
        //         _currentMentItem = value;
        //       });
        //   },
        PopupMenuButton(
                  onSelected: (value) {
                    print(value);
                    setState(() {
                      print('$value');
                      _currentMentItem = value;
                    });
                   
                  },
          itemBuilder: (BuildContext context) => [
            PopupMenuItem(
              value: 'Home',
              child: Text("Home"),
            ),
             PopupMenuItem(
              value: 'discover',
              child: Text("discover"),
            ),
             PopupMenuItem(
              value: 'mine',
              child: Text("mine"),
            )
          ],
        )

      ],

    );
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           buttonDemo1,
           buttonDemo2,
           buttonDemo3,
           FixedWidthButton4,
           ExpandButton5,
           ButtonBarDemo6,
           PopupmenuButton7,
          ],
        ),
      ),
    );
  }
}


class _widgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("data"),
                SizedBox(width: 20,),
                Text("data2"),
              ],
            )
          ],
        ),
      ),
    );
  }
}





class FloatingActionButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget _floatingActionButton = FloatingActionButton(
      onPressed: (){
        Navigator.pop(context);
      },
      child: Icon(Icons.brightness_auto),
      elevation: 0.0,
      backgroundColor: Colors.red,
      shape: BeveledRectangleBorder(  //斜切的矩形边界
        borderRadius: BorderRadius.circular(10),
      ),
    );

    final Widget _floatingActionButtonExtended = FloatingActionButton.extended(
      onPressed: (){},
      icon: Icon(Icons.add),
      label: Text(""),
    );


    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButtonDemo'),
        elevation: 0.0,
      ),
      floatingActionButton: _floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: BottomAppBar(
        child:Container(
          height: 49,
        ),
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}



class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({
    this.title,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}





class PopupMenuButtonDemo extends StatefulWidget {
  @override
  _PopupMenuButtonDemoState createState() => _PopupMenuButtonDemoState();
}

class _PopupMenuButtonDemoState extends State<PopupMenuButtonDemo> {
  String _currentMenuItem = 'Home';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PopupMenuButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_currentMenuItem),
                PopupMenuButton(
                  onSelected: (value) {
                    print(value);
                    setState(() {
                      _currentMenuItem = value;
                    });
                  },
                  itemBuilder: (BuildContext context) => [
                    PopupMenuItem(
                      value: 'Home',
                      child: Text('Home'),
                    ),
                    PopupMenuItem(
                      value: 'Discover',
                      child: Text('Discover'),
                    ),
                    PopupMenuItem(
                      value: 'Community',
                      child: Text('Community'),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}