
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:hello_world/model/post.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import '8.post_show.dart';
class HttpDemoTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HttpDemoTwo'),
        elevation: 0.0,
      ),
      body: HttpDemoTwoHome(),

    );
  }
}


class HttpDemoTwoHome extends StatefulWidget {
  @override
  _HttpDemoTwoHomeState createState() => _HttpDemoTwoHomeState();
}

class _HttpDemoTwoHomeState extends State<HttpDemoTwoHome> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchPosts()
    .then((value) => log(value));
  }

  void log(value){
    for (var i = 0; i < value.length; i++) {
      print('title:${value[i].title}');
    }

  }


   Future<List<PostTwo>> fetchPosts() async {
    final response = await http.get('https://resources.ninghao.net/demo/posts.json');
    if(response.statusCode == 200){
      final responseBody = json.decode(response.body);
      List<PostTwo> posts = responseBody['posts'].map<PostTwo>((item) => PostTwo.fromJson(item)).toList();
      return posts;
    } else{
      throw Exception('failed to fetch posts.');
    }

    var bodyStr= response.body;
    var bodyJson = json.decode(bodyStr);

    print(bodyJson['posts'][0]['title']+ '   99999');

  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchPosts(),
      builder: (BuildContext context, AsyncSnapshot snapshot){
        if(snapshot.connectionState == ConnectionState.waiting){
          return Center(
            child: Text('loading'),
          );
        }
        return ListView(
          children: snapshot.data.map<Widget>((item){
            return ListTile(
              title: Text(item.title),
              subtitle: Text(item.author),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(item.imageUrl),
              ),
                 onTap: (){
                //  debugPrint('tap');
                final Post data = Post(
                  title: item.title,
                  author: item.author,
                  imageUrl: item.imageUrl,
                  description: item.description,

                );
                var materialPageRoute = MaterialPageRoute(
                    builder: (context) => PostShow(post: data)
                  );
                Navigator.of(context).push(
                  materialPageRoute
                );
               },
            );
          }).toList(),
        );
      }

    );
  }
}


class PostTwo{
  final String title;
  final String description;
  final String author;
  final String imageUrl;
  PostTwo(
    this.title,
    this.description,
    this.author,
    this.imageUrl
  );

  PostTwo.fromJson(Map json)
    : title = json['title'],
    description = json['description'],
    author = json['author'],
    imageUrl = json['imageUrl'];
    

  
  Map toJson() => {
    'title':title,
    'description':description,
     'author':author,
    'imageUrl':imageUrl,
  };


}