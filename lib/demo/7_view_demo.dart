import 'package:flutter/material.dart';
import '../model/post.dart';
class ViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // return PageViewDemo();
    // return PageViewBuilderDeno();
//  return GridViewCountDemo();
      // return GridViewExtentDemo();
      return GridViewBuilderDemo();

   
  }
}

class GridViewBuilderDemo extends StatelessWidget{
Widget _gridItemBuilder(BuildContext context ,int index){
  return Container(
    child: Image.network(
      posts[index].imageUrl,
      fit: BoxFit.cover,
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      padding: EdgeInsets.all(8.0), //内边距
      itemCount: posts.length,
      itemBuilder: _gridItemBuilder,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),

      //  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      //   maxCrossAxisExtent: 50,
      //   crossAxisSpacing: 8.0,
      //   mainAxisSpacing: 8.0,
      // ),


    );
  }
}



class GridViewExtentDemo  extends StatelessWidget{
  List<Widget>_builderTiles (length){
    return List.generate(length,(int index){
      return Container(
        color: Color(0xffbbbbbb),
        alignment: Alignment(0, 0),
        child: Text('iTem $index',style: TextStyle(fontSize: 20,color: Colors.red),),
      );
    });
  
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.extent(
      maxCrossAxisExtent: 120,
      // crossAxisCount: 3,
      crossAxisSpacing: 5,
      mainAxisSpacing: 20,
      scrollDirection: Axis.horizontal,
      children:_builderTiles(100)
    );
  }
}

class GridViewCountDemo  extends StatelessWidget{
List<Widget>_builderTiles (length){
  return List.generate(length,(int index){
    return Container(
      color: Color(0xffbbbbbb),
      alignment: Alignment(0, 0),
      child: Text('iTem $index',style: TextStyle(fontSize: 20,color: Colors.red),),
    );
  });
  
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 20,
      children:_builderTiles(100)
    );
  }
}



class PageViewBuilderDeno extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Widget _pageItemBuilder(BuildContext context,int index){
      return Stack(
        children: <Widget>[
          SizedBox.expand(
            child: Image.network(
              posts[index].imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            // bottom: 10,
            // left: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                 posts[index].title,
                 style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  posts[index].author,
                  textAlign:TextAlign.center,
                )
              ],
            ),
          )


        ],
      );
    }
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,

    );; 
  }
}



class PageViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      pageSnapping: true, //分页
      reverse: false,   //方向反序
      scrollDirection: Axis.vertical,   //滚动方向
      onPageChanged: (currentPage) => debugPrint('page:$currentPage'),
      controller: PageController(
        initialPage: 1,
        keepPage: false,
        viewportFraction: 0.25, //cell 高度屏幕占比
      ),
      children: <Widget>[
        Container(
          color: Color(0xff123456),
          alignment: Alignment(0.0, 0.0),
          child: Text(
            '1111',
            style:TextStyle(fontSize:30,color:Colors.red)
          ),
        ),
        Container(
          color: Color(0xff77745),
          alignment: Alignment(-1.0, 1.0),
          child: Text(
            '2222',
            style:TextStyle(fontSize:30,color:Colors.red)
          ),
        ),
        Container(
          color: Color(0xff097823),
          alignment: Alignment(0.0, 0.0),
          child: Text(
            '33',
            style:TextStyle(fontSize:30,color:Colors.red),
          ),
        )
      ],
    );;
  }
}



