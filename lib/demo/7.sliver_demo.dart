import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/post.dart';
class SliverDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            // title: Text('NINGHAO'),
            // pinned: true,
            floating: true,
            expandedHeight: 90.0,  //宽展高度
            backgroundColor: Color(0xffff0099), //背景色
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Ninghao Flutter'.toUpperCase(),
                style: TextStyle(
                  fontSize: 15.0,
                  letterSpacing: 3.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              background: Image.network(
                'https://resources.ninghao.net/images/overkill.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverSafeArea(
            sliver: SliverPadding(
              padding: EdgeInsets.all(5),
              // sliver: SliverGridDemo(),
              sliver: SliverListDemo(),
            ),
          )
        ],
      ),
    );
  }
}



class SliverListDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context,int index){
        return Padding(
          padding: EdgeInsets.only(bottom: 32.0),
          child: Material(
            borderRadius: BorderRadius.circular(20.0),
            elevation: 14.0,
            child:Stack(
              children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16/9,
                    child: Image.network(
                      posts[index].imageUrl,
                  // fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 32,
                    left: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          posts[index].title,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          posts[index].author,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          )
                        ),


                          

                       
                      ],
                    ),
                  )



              ],
            )


          
          


          ),

        );
        },
        childCount: posts.length,
      ),
    );
  }
}


class SliverGridDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              childAspectRatio: 1.5,
            ),
            delegate: SliverChildBuilderDelegate((BuildContext context,int index){
              return Container(
                child: Image.network(
                  posts[index].imageUrl,
                  fit: BoxFit.cover,
                  ),
              );
              },
              childCount: posts.length,
            ),
          );
  }
}