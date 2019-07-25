import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';
import '10.material_components.dart';

enum Option{
  A,B,C
}

enum Action{
  ok,
  cancel
}

class Day12Demo extends StatelessWidget {
  const Day12Demo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("day12Demo"),
        elevation: 10.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(title: "simpleDialogDemo",page: simpleDialogDemo(),),
          ListItem(title: "AlertDialogDemoState",page: AlertDialogDemoState(),),
          ListItem(title: "BottomSheetDemo",page: BottomSheetDemo(),),
          ListItem(title: "SnackBarDemo",page: SnackBarDemo(),),
          ListItem(title: "ExpansionPanelDemo 收缩面板",page: ExpansionPanelDemo(),),


          
        ],
      ),

    );
  }
}


class simpleDialogDemo extends StatefulWidget {
  simpleDialogDemo({Key key}) : super(key: key);

  _simpleDialogDemoState createState() => _simpleDialogDemoState();
}
class _simpleDialogDemoState extends State<simpleDialogDemo> {

  String _choice = "Nothing";
  Future  _openSimpleDialog ()async{
    final option = await showDialog(
      context: context,
      builder: (BuildContext context){
        return SimpleDialog(
          title: Text("simpleDialog"),
          children: <Widget>[
            SimpleDialogOption(
              child: Text('option A'),
              onPressed: (){
                Navigator.pop(context,Option.A);
                print("A");
              },
            ),
            SimpleDialogOption(
              child: Text('option B'),
              onPressed: (){
                Navigator.pop(context,Option.B);
                print("B");
              },
            ),
            SimpleDialogOption(
              child: Text('option C'),
              onPressed: (){
                Navigator.pop(context,Option.C);
                print("C");
              },
            )
      

          ],
        );
      }
    );
    switch (option) {
      case Option.A:{
        setState(() {
          _choice = 'A';
        });
        break;
      } 
      case Option.B:{
        setState(() {
          _choice = 'B';
        });
        break;
      } 
      case Option.C:{
        setState(() {
          _choice = 'C';
        });
        break;
      } 
    } 
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("simpleDialogDemo"),
        elevation: 10.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Text("$_choice")
          ],

        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.format_list_numbered),
        onPressed: _openSimpleDialog,
      ),
    );
  }
}




class AlertDialogDemoState extends StatefulWidget {
  AlertDialogDemoState({Key key}) : super(key: key);

  _AlertDialogDemoStateState createState() => _AlertDialogDemoStateState();
}

class _AlertDialogDemoStateState extends State<AlertDialogDemoState> {
  @override
  String _choice = "Nothing"; 

  Future _openAlertDialog() async{
   final action = await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text('AlertDialog'),
          content: Text("Are you sure about this?"),
          actions: <Widget>[
            FlatButton(
              child: Text("cancel"),
              onPressed: (){
                Navigator.pop(context,Action.cancel);
              },
            ),
            FlatButton(
              child: Text("ok"),
              onPressed: (){
                Navigator.pop(context,Action.ok);
              },
            )
          ],
        );
      }

    );
   switch (action) {
     case Action.ok:
      setState(() {
        _choice = 'ok';
      });
       break;
      case Action.cancel:
      setState(() {
        _choice = 'cancel';
      });
       break;
     default:
   } 
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('alertdialogDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('your choice is: $_choice'),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text("open AlertDialog"),
                  onPressed:_openAlertDialog ,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}





// class BottomSheetDemo extends StatefulWidget {
//   BottomSheetDemo({Key key}) : super(key: key);

//   _BottomSheetDemoState createState() => _BottomSheetDemoState();
// }

// class _BottomSheetDemoState extends State<BottomSheetDemo> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("BottomSheetDemo"),
//         elevation: 10.0,
//       ),
//       body: Container(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[

//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }






class BottomSheetDemo extends StatefulWidget {
  @override
  _BottomSheetDemoState createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {
  final _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();
  
  _openBottomSheet() {
    _bottomSheetScaffoldKey
      .currentState
      .showBottomSheet((BuildContext context) {
        return BottomAppBar(
          child: Container(
            height: 90.0,
            width: double.infinity,
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                Icon(Icons.pause_circle_outline),
                SizedBox(width: 16.0,),
                Text('01:30 / 03:30'),
                Expanded(
                  child: Text('001', textAlign: TextAlign.right,),
                ),
                 Expanded(
                  child: Text('002', textAlign: TextAlign.right,),
                ),
                 Expanded(
                  child: Text('003', textAlign: TextAlign.right,),
                ),
              ],
            ),
          ),
        );
      });
  }

  Future _openModalBottomSheet() async {
    final option = await showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200.0,
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('Option A'),
                onTap: () {
                  Navigator.pop(context, 'A');
                },
              ),
              ListTile(
                title: Text('Option B'),
                onTap: () {
                  Navigator.pop(context, 'B');
                },
              ),
              ListTile(
                title: Text('Option C'),
                onTap: () {
                  Navigator.pop(context, 'C');
                },
              ),
            ],
          ),
        );
      }
    );

    print(option);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _bottomSheetScaffoldKey,
      appBar: AppBar(
        title: Text('BottomSheetDemo'),
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
                FlatButton(
                  child: Text('Open BottomSheet'),
                  onPressed: _openBottomSheet,
                ),
                FlatButton(
                  child: Text('Modal BottomSheet'),
                  onPressed: _openModalBottomSheet,
                ),
              ]
            ),
          ],
        ),
      ),
    );
  }
}






class SnackBarDemo extends StatefulWidget {
  @override
  _SnackBarDemoState createState() => _SnackBarDemoState();
}
class _SnackBarDemoState extends State<SnackBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBarDemo'),
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
                SnackBarButton(),
              ]
            ),
          ],
        ),
      ),
    );
  }
}
class SnackBarButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text('Open SnackBar'),
      onPressed: () {
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text('Processing...'),
            action: SnackBarAction(
              label: 'OK',
              onPressed: () {
                print('OK');
              },
            ),
          )
        );
      },
    );
  }
}








class ExpansionPanelItem {
  final String headerText;
  final Widget body;
  bool isExpanded;

// 构造函数
  ExpansionPanelItem({
    this.headerText,
    this.body,
    this.isExpanded,
  });
}




class ExpansionPanelDemo extends StatefulWidget {
  @override
  _ExpansionPanelDemoState createState() => _ExpansionPanelDemoState();
}

class _ExpansionPanelDemoState extends State<ExpansionPanelDemo> {
  List<ExpansionPanelItem> _expansionPanelItems;

  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();

    _expansionPanelItems = <ExpansionPanelItem>[
      ExpansionPanelItem(
        headerText: 'Panel A',
        body: Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          child: Text('Content for Panel A.'),
        ),
        isExpanded: false,
      ),
      ExpansionPanelItem(
        headerText: 'Panel B',
        body: Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          child: Text('Content for Panel B.'),
        ),
        isExpanded: false,
      ),
      ExpansionPanelItem(
        headerText: 'Panel C',
        body: Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          child: Text('Content for Panel C.'),
        ),
        isExpanded: false,
      ),
    ];
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpansionPanelDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ExpansionPanelList(
              expansionCallback: (int panelIndex, bool isExpanded) {
                setState(() {
                  _expansionPanelItems[panelIndex].isExpanded = !isExpanded;
                  _isExpanded = !isExpanded;
                });
              },
              // children: [
              //   ExpansionPanel(
              //     headerBuilder: (BuildContext context,bool isExpanded){
              //       return Container(
              //         padding: EdgeInsets.all(16),
              //         child: Text(
              //           "panel A", style:Theme.of(context).textTheme.title,
              //         ),

              //       );
              //     },
              //     body: Container(
              //       padding: EdgeInsets.all(16),
              //       width: double.infinity,
              //       child: Text("content for panel A"),
              //     ),
              //     isExpanded: _isExpanded,
                  
              //   ),
              // ],

              // children: _expansionPanelItems.map(
              //   (ExpansionPanelItem item) {
              //     return ExpansionPanel(
              //       isExpanded: item.isExpanded,
              //       body: item.body,
              //       headerBuilder: (BuildContext context, bool isExpanded) {
              //         return Container(
              //           padding: EdgeInsets.all(16.0),
              //           child: Text(
              //             item.headerText,
              //             style: Theme.of(context).textTheme.title,
              //           ),
              //         );
              //       },
              //     );
              //   }
              // ).toList(),
              children: _expansionPanelItems.map(
                (ExpansionPanelItem item){
                  return ExpansionPanel(
                    isExpanded: item.isExpanded,
                    body: item.body,
                    headerBuilder:(BuildContext context,bool isExpanded){
                      return Container(
                        padding: EdgeInsets.all(16),
                        child: Text(
                          item.headerText,
                          style: Theme.of(context).textTheme.title,
                        ),

                      );

                    },



                  );
                }
              ).toList(),
            ),
          ],
        ),
      ),
    );
  }
}