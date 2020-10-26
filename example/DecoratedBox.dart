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
    return Center(
        child:DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.red,Colors.orange[700]]),
          borderRadius: BorderRadius.circular(3),
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              offset: Offset(2,2),
              blurRadius: 4
            )
          ]
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 80,
            vertical: 18,
          ),
          child: Text('logon',style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}