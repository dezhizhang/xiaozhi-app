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
      child: Text.rich(TextSpan(
        children: [
          TextSpan(
            text: 'Home'
          ),
          TextSpan(
            text: 'https://www.xiaozhi.shop',
            style: TextStyle(
              color: Colors.blue
            )
            // recognizer: () {

            // }
          )
        ]
      )),
    );
  }
}
