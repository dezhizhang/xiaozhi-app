/*
 * @Author: your name
 * @Date: 2020-10-31 21:06:22
 * @LastEditTime: 2020-12-13 11:56:58
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: /xiaozhi/examples/button.dart
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
        body: HomeContent(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
    );
  }
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: FlatButton(
        color: Colors.blue,
        highlightColor: Colors.pink,
        colorBrightness: Brightness.dark,
        splashColor: Colors.grey,
        child: Text('提交'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        onPressed: () {
          
        },
      ),
    );
  }
}