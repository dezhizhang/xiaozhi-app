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
        primarySwatch: Colors.blue
      ),
    );
  }
}

// class HomeContent extends StatelessWidget{
//   Widget divider1 = Divider(color: Colors.blue);
//   Widget divider2 = Divider(color: Colors.red);
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return ListView.separated(
//       itemBuilder: (BuildContext context,int index) {
//         return ListTile(title: Text('${index}'));
//       }, 
//       separatorBuilder: (BuildContext context,int index) {
//         return index % 2 == 0 ? divider1:divider2;
//       }, 
//       itemCount: 100
//     );
//   }
// }


class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        ListTile(title: Text('商品列表')),
        ListView.builder(
          itemBuilder: (BuildContext context,int index) {
            return ListTile(title: Text("${index}"));
          },
        )
      ],
    );
  }
}

