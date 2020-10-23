import 'dart:ui';

import 'package:flutter/material.dart';

import './pages/form.dart';

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
        '/form':(context) => FormPage()
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
      child: RaisedButton(
        child: Text('跳转到表单页'),
        color: Colors.pink,
        onPressed: () {
          Navigator.pushNamed(context, '/form');
        },
      ),
    );   
  }
}