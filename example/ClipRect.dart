import 'dart:ui';

import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('晓智商城'),
//         ),
//         body: HomeContent(),
//       ),
//       theme: ThemeData(
//         primarySwatch: Colors.blueGrey
//       ),
//     );
//   }
// }

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
        primarySwatch: Colors.pink
      ),
    );
  }
}


class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            child: ClipOval(
              child: Image.network('http://tugua.oss-cn-hangzhou.aliyuncs.com/16007371732208143.jpeg',fit: BoxFit.cover),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            child: ClipRect(
              child: Image.network('http://tugua.oss-cn-hangzhou.aliyuncs.com/16007371921474207.jpeg'),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            child: ClipRRect(
              child: Image.network('http://tugua.oss-cn-hangzhou.aliyuncs.com/16007371921474207.jpeg'),
            ),
          )
        ],
      ),
    );
  }
}