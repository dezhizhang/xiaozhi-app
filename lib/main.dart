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
         title: Text('贵彩办公'),
       ),
       body:HomeContent()
     ),
   );
  }
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Text('我是一个文本组件'),
      width: 300,
      height: 300,
      alignment: Alignment.bottomRight,
      decoration:BoxDecoration(
        color: Colors.pink,
        border: Border.all(
          color:Colors.yellow,
          width:2.0
        )
      )
    );
  }
}


