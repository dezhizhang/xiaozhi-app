import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('晓智商城'),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.blueGrey
      ),
    );
  }
}


// class HomeContent extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//    return ListView(
//      children: <Widget>[
//        Card(
//          margin: EdgeInsets.all(10),
//          child: Column(
//            children: <Widget>[
//              AspectRatio(
//                aspectRatio: 16/9,
//                child:  Image.network(
//                  'http://tugua.oss-cn-hangzhou.aliyuncs.com/16007371921474207.jpeg',
//                  fit: BoxFit.cover,
//                 ),
//              ),
//              ListTile(
//               //  leading: ClipOval(
//               //    child: Image.network(
//               //      'http://tugua.oss-cn-hangzhou.aliyuncs.com/16007371921474207.jpeg',
//               //      fit: BoxFit.cover,
//               //     ),
//               //  ),
//               leading: CircleAvatar(
//                 backgroundImage: NetworkImage('http://tugua.oss-cn-hangzhou.aliyuncs.com/16007371921474207.jpeg'),
//               ),
//                title: Text('晓智商城'),
//                subtitle: Text('hello'),
//              )
//            ],
//          ),
//        )
//      ],
//    );
//   }
// }

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  'http://tugua.oss-cn-hangzhou.aliyuncs.com/16007371921474207.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('http://tugua.oss-cn-hangzhou.aliyuncs.com/16007371921474207.jpeg'),
                ),
                title: Text('晓智商城'),
                subtitle: Text('晓智商城页'),
              )
            ],
          ),
        )
      ],
    );
  }
}