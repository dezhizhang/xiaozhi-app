import 'dart:ui';

import 'package:flutter/material.dart';

import './pages/form.dart';
import './pages/search.dart';

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
          title:Text('晓知商城')
        ),
        body: HomeContent(),
      ),
      routes: {
        '/form':(context) => FormPage(),
        '/search':(context) => SearchPage()
      },
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
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('跳到表单'),
            color: Colors.pink,
            onPressed: () {
              Navigator.pushNamed(context, '/form');
            },
          ),
          RaisedButton(
            child: Text('跳到搜索'),
            color: Colors.yellow,
            onPressed: () {
              Navigator.pushNamed(context, '/search');
            },
          )
        ],
      ),
    );
  }
}