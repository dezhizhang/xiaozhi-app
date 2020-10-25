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

class  HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 120,
      height: 120,
      color: Colors.pink[50],
      child: Align(
        alignment: Alignment.topRight,
        child: FlutterLogo(
          size: 60,
        ),
      ),
    );
  }
}