
/**
 * @author:dezhizhang
 * @date:2020-10-17
 * @desc:文本组件
*/
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
        body: HomeContent()
      ),
    );
  }
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 300.0,
      height: 300.0,
      decoration: BoxDecoration(
        color: Colors.pink,
        border: Border.all(
          width:2.0,
          color:Colors.yellow
        )
      ),
      child: Text(
        '我是一个文本组件',
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        textScaleFactor: 2.0,
        style: TextStyle(
          fontSize: 12.0,
          color: Colors.green
        ),
      ),
    );
  }
}