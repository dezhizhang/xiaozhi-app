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
     child: Container(
       width: 300,
       height: 300,
       decoration: BoxDecoration(
         color: Colors.pink,
         border: Border.all(
           color:Colors.yellow,
           width:2
         )
       ),
       child: Image.network(
         'http://tugua.oss-cn-hangzhou.aliyuncs.com/16006151939994201.jpeg',
        //  fit: BoxFit.cover,
        // fit: BoxFit.contain,
        alignment: Alignment.center,
        color: Colors.yellow,
        repeat: ImageRepeat.repeat,
        colorBlendMode: BlendMode.multiply,

       ),
     ),
     
   );
  }
}