import 'package:flutter/material.dart';
import '10.material_components.dart';
import 'package:intl/intl.dart';


class Day11Demo extends StatelessWidget {
  const Day11Demo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('day11demo'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(title: "CheckboxDemo",page:CheckboxDemo(),),
          ListItem(title: "radioDemo",page:radioDemo(),),
          ListItem(title: "switchDemo",page:switchDemo(),),
          ListItem(title: "sliderDemo",page:sliderDemo(),),
          ListItem(title: "dateTimeDemo",page:dateTimeDemo(),),



          // ListItem(title: "menubutton",page: PopupMenuButtonDemo(),)

        ],
      ),
    );
  }
}










class CheckboxDemo extends StatefulWidget {
  @override
  _CheckboxDemoState createState() => _CheckboxDemoState();
}

class _CheckboxDemoState extends State<CheckboxDemo> {
  bool _checkboxItemA = true;
  int _radioGroupA = 0;

  void _handleRadioValueChanged (int value){
    setState(() {
      _radioGroupA = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckboxDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CheckboxListTile(
              activeColor: Color(0xff006798),
              value: _checkboxItemA,
              onChanged: (value){
                setState(() {
                  _checkboxItemA = value;
                });
              },
              title: Text("Title"),
              subtitle: Text("subtitle"),
              secondary: Icon(Icons.bookmark),
              selected: _checkboxItemA,

            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Checkbox(
                  value:_checkboxItemA,
                  onChanged: (value){
                    setState(() {
                      _checkboxItemA = value;
                    });
                  },
                )

              ],
            ),
          ],
        ),

      ),
    );
  }
}


class radioDemo extends StatefulWidget {
  radioDemo({Key key}) : super(key: key);
  _radioDemoState createState() => _radioDemoState();
}

class _radioDemoState extends State<radioDemo> {

      int _radioGroupA = -1;

  void _handleRadioValueChanged (int value){
    setState(() {
      print(value);
      _radioGroupA = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RadioDemo'),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        
          children: <Widget>[
            Text('RadioGroupValue:$_radioGroupA'),
            SizedBox(height: 32.0,),
            RadioListTile(
              value: 0,
              groupValue: _radioGroupA,
              onChanged: _handleRadioValueChanged,
              title: Text("title"),
              subtitle: Text("subtitle"),
              secondary: Icon(Icons.border_inner),
              selected: _radioGroupA == 0,
              activeColor: Color(0xffff0000),
            ),



            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                 Radio(
                  value: 6,
                  groupValue: _radioGroupA,
                  onChanged: _handleRadioValueChanged,
                  activeColor: Colors.black,
                ),
                Radio(
                  value: 16,
                  groupValue: _radioGroupA,
                  onChanged: _handleRadioValueChanged,
                  activeColor: Colors.black,
                ),
                 Radio(
                  value: 26,
                  groupValue: _radioGroupA,
                  onChanged: _handleRadioValueChanged,
                  activeColor: Colors.black,
                ),
              ],
            )
            
          ],
        ),
      ),
    );
  }
}






class switchDemo extends StatefulWidget {
  switchDemo({Key key}) : super(key: key);

  _switchDemoState createState() => _switchDemoState();
}
class _switchDemoState extends State<switchDemo> {
  bool _switchItemA = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("switch demo"),
        elevation: 10.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SwitchListTile(
              value: _switchItemA,
              onChanged: (value){
                setState(() {
                  _switchItemA = value;
                });
              },
              title: Text("title"),
              subtitle: Text("subtitle"),
              secondary: Icon(_switchItemA ? Icons.visibility : Icons.visibility_off),
              selected: _switchItemA,
              activeColor: Color(0xffff0000),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_switchItemA ? "😄":"💔",style: TextStyle(fontSize: 32.0),),
                SizedBox(width: 50,),
                Switch(
                  value: _switchItemA,
                  onChanged: (value){
                    setState(() {
                      _switchItemA = value;
                    });

                  },
                )

              ],
            )
          ],
        ),
      ),

    );
  }
}



class sliderDemo extends StatefulWidget {
  sliderDemo({Key key}) : super(key: key);

  _sliderDemoState createState() => _sliderDemoState();
}
class _sliderDemoState extends State<sliderDemo> {
  double _slideItemA = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("sliderDemo"),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Slider(
                  value: _slideItemA,
                  onChanged: (value){
                    setState(() {
                      _slideItemA = value;
                    });
                  },
                  activeColor: Theme.of(context).accentColor,
                  inactiveColor: Theme.of(context).accentColor.withOpacity(0.3),
                  max: 1.0,
                  min: 0.0,
                  divisions: 100,
                  label: '${_slideItemA.toDouble()}',
                )                
              ],
            ),
            SizedBox(height: 16.0,),
            Text('slidevalue: $_slideItemA'),
          ],
        ),
      ),

    );
  }
}




class dateTimeDemo extends StatefulWidget {
  dateTimeDemo({Key key}) : super(key: key);

  _dateTimeDemoState createState() => _dateTimeDemoState();
}

class _dateTimeDemoState extends State<dateTimeDemo> {
   DateTime selectedDate = DateTime.now();
   TimeOfDay selectedTime = TimeOfDay(hour: 9,minute: 30);

  _selectDate() async {
    final DateTime date = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if(date == null) return;
    setState(() {
      selectedDate = date;
    });
  }

  _selectTime() async{
    print("000");
    final TimeOfDay time = await showTimePicker(
      context: context,
      initialTime: selectedTime
    );
    print("111");
    if(time == null) return;
    setState(() {
      selectedTime = time;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("dateTimeDemo"),
        elevation: 10.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: _selectDate,
                  child: Row(
                    children: <Widget>[
                     Text(DateFormat.yMMMMEEEEd().format(selectedDate)),
                     Icon(Icons.arrow_drop_down), 
                    ],
                  ),
                ),
                InkWell(
                  onTap: _selectTime,
                  child: Row(
                    children: <Widget>[
                     Text(selectedTime.format(context)),
                     Icon(Icons.arrow_drop_down), 
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),

    );
  }
}