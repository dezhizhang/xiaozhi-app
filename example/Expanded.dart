import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget{
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

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(10),
      child:Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
          
            width: 100,
            height: 100,
            color: Colors.pink,
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
        )
      ],
    ) ,
    );
  }
}
