import 'dart:ui';

import 'package:flutter/material.dart';
import './pages/appbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('晓智商城'),
        ),
        body: HomeContent(),
      ),
      routes: {
        '/appbar':(context) => AppBarPage()
      },
      theme: ThemeData(
        primarySwatch: Colors.blueGrey
      ),
    );
  }
}


class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        color: Colors.pink,
        child: Text('跳转到appBar'),
        onPressed: (){
          Navigator.pushNamed(context, '/appbar');
        },
      ),
    );
  }
}


