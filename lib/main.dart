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
  bool switchState = false;
  bool checkState = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: <Widget>[
          Switch(
            value: this.switchState,
            onChanged: (value) {

            },
          ),
          SizedBox(height: 10),
          Checkbox(
            value:this.checkState,
            onChanged: (value) {

            },
          )
        ],
      ),
    );
  }
}