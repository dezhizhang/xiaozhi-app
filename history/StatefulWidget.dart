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

class HomeContent extends StatefulWidget{
  @override
  HomeContent({Key key}):super(key:key);
  _HomeContent createState() =>_HomeContent();

}

class _HomeContent extends State<HomeContent>{
  int count = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        SizedBox(height: 200),
        Chip(
          label: Text("${this.count}"),
        ),
        SizedBox(height:20),
        RaisedButton(
          child: Text('按钮'),
          onPressed: (){
            setState(() {
              this.count++;
            });
          },
        )
      ],
    );
  }

}