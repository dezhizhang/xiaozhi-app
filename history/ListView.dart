import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

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

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('贵彩办公'),
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
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        ListTile(
          leading: Image.network('http://tugua.oss-cn-hangzhou.aliyuncs.com/16007371732208143.jpeg',width: 100,height: 100,),
          title: Text(
            '新闻标题1',
            style: TextStyle(
              fontSize: 18,
              color:Colors.pink
            ),
          ),
          subtitle: Text('新闻内容新闻内容新闻内容新闻内容新闻内容新闻内容新闻内容'),
        ),
        ListTile(
          leading: Icon(Icons.home,color: Colors.yellow,size: 60),
          title: Text('新闻标题1'),
          subtitle: Text('新闻内容新闻内容新闻内容新闻内容新闻内容新闻内容新闻内容'),
        ),
        ListTile(
          leading: Icon(Icons.settings,color: Colors.green,size: 60),
          title: Text('新闻标题1'),
          subtitle: Text('新闻内容新闻内容新闻内容新闻内容新闻内容新闻内容新闻内容'),
        )
      ],
    );
  }
}

