import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hello_world/model/post.dart';
import 'dart:async';
import '10.material_components.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import '18.2(http).dart';
class Day18Demo extends StatelessWidget {
  const Day18Demo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Day18Demo"),
        elevation: 10.0,
      ),
      body: ListView(
        children: <Widget>[
         ListItem(title: "18.1 HttpDemo ",page: HttpDemo(),),
         ListItem(title: "18.2 HttpDemo ",page: HttpDemoTwo(),),


        ],
      ),

    );
  }
}

class HttpDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HttpDemo'),
        elevation: 0.0,
      ),
      body: HttpDemoHome(),

    );
  }
}


class HttpDemoHome extends StatefulWidget {
  @override
  _HttpDemoHomeState createState() => _HttpDemoHomeState();
}

class _HttpDemoHomeState extends State<HttpDemoHome> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final post = {
      'title':'hello',
      'description':'nice'
    };

    print(post['title'] + "  111111");
    print(post['description'] +"  22222");
    final postJson = json.encode(post);
    print(postJson+"  33333");

    final postJsonConverted = json.decode(postJson);
    print(postJsonConverted['title']+ " 444444");
    print(postJsonConverted['description'] +" 555555");
    print(postJsonConverted is Map);
    print(postJsonConverted);
    print(postJsonConverted.toString()+ "66666");
    fetchPost();

    final postModel = Post.fromJson(post);
    print('title:${postModel.title}, description:${postModel.description} 121221211212');

    print('${json.encode(postModel)}  😄😄'); //编码为 json 字符串

  }

  fetchPost() async {
    final response = await http.get('https://resources.ninghao.net/demo/posts.json');
    print('777777 statusCode :${response.statusCode}');
    // print('88888888 body:${response.body}');
    var bodyStr= response.body;
    var bodyJson = json.decode(bodyStr);

    print(bodyJson['posts'][0]['title']+ '   99999');

  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}



class Post{
  final String title;
  final String description;
  Post(
    this.title,
    this.description
  );

  Post.fromJson(Map json)
    : title = json['title'],
    description = json['description'];

  
  Map toJson() => {
    'title':title,
    'description':description,
  };


}