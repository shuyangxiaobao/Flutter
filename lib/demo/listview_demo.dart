import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import '../model/post.dart';


class ListViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
          itemCount: posts.length,
          itemBuilder: _listItemBuilder,
        );
  }

// _listItemBuilder 方法  start
 Widget _listItemBuilder(BuildContext context,int index){
   return Container(
     color: Colors.white,
     margin: EdgeInsets.fromLTRB(10,20,30,40), //left top  right bottom
     child: Column(
       children: <Widget>[
         Image.network(posts[index].imageUrl),
         SizedBox(height: 10.0,),
         Text(
           posts[index].title,
           style: Theme.of(context).textTheme.title,

          // style: TextStyle(
          //     fontSize: 20,
          //     fontWeight: FontWeight.w900,
          // ),
           
         ),
         
         Text(
           posts[index].author,
          //  style: Theme.of(context).textTheme.subtitle,
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w400,
          ),
         ),
         SizedBox(height: 10,)

       ],
     ),

   );
 }
 // _listItemBuilder 方法  end

}
