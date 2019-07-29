import 'package:flutter/material.dart';
import 'dart:async';
class StreamDemoThree extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("15.3 stream demo"),
        elevation: 0.0,
      ),
      body: StreamDemoHomeOne(),
      
          );
        }
}
class StreamDemoHomeOne extends StatefulWidget {
  StreamDemoHomeOne({Key key}) : super(key: key);

  _StreamDemoHomeOneState createState() => _StreamDemoHomeOneState();
}

class _StreamDemoHomeOneState extends State<StreamDemoHomeOne> {
  StreamSubscription _streamDemoSubscription;
  StreamController<String> _streamDemo;
  StreamSink _sinkDemo;
  String _data = "...";
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _streamDemo.close();
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('create a stream');
    // Stream<String> _streamDemo = Stream.fromFuture(fetchData());
    _streamDemo = StreamController.broadcast();  //广播
    _sinkDemo = _streamDemo.sink;
    print('start listening on a stream');
    _streamDemoSubscription = _streamDemo.stream.listen(onData,onError: onError,onDone: onDone);
    _streamDemo.stream.listen(onDataTwo,onError: onError,onDone: onDone);
    print('initialize completed');
  }

  void onData(String data){
    print("onData:$data");
    setState(() {
      _data = data;
    });
  }

  void onDataTwo(String data){
    print("onDataTwo:$data");
  }

  void onError(error) {
    print("Error:$error");
  }

  onDone(){
    print("Done");
  }

  Future<String> fetchData() async{
    await Future.delayed(Duration(seconds:1));
    print("0000");
    // throw "something happen";
    return 'hello ~';
  }

  void _pauseStream(){
    print("pause subscription");
    _streamDemoSubscription.pause();
  }
  
    void _resumeStream(){
    print("resume subscription");
    _streamDemoSubscription.resume();
  }

    void _cancelStream(){
    print("cancel subscription");
    _streamDemoSubscription.cancel();
  }

  void _addDataToStream() async{
    print("Add data to stream");
    String data = await fetchData();
    _streamDemo.add(data);
    // _sinkDemo.add(data);

  }




  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_data),
            StreamBuilder(
              stream: _streamDemo.stream,
              initialData: '...',
              builder: (context,snapshot){
                return Text('${snapshot.data}');
              },

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text("Add"),
                  onPressed: _addDataToStream,
                ),
                 FlatButton(
                  child: Text("pause"),
                  onPressed: _pauseStream,
                ),
                FlatButton(
                  child: Text("Resume"),
                  onPressed: _resumeStream,
                ),
                FlatButton(
                  child: Text("Cancel"),
                  onPressed: _cancelStream,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
    
      


}