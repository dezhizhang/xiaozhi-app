import 'dart:ui';

import 'package:flutter/material.dart';
import './pages/appbar.dart';
import './pages/topBar.dart';
import './pages/topBarCon.dart';
import './pages/darw.dart';
import './pages/button.dart';
import './pages/textField.dart';

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
        '/appbar':(context) => AppBarPage(),
        '/topbar':(context) => TopBarPage(),
        '/topcon':(context) => AppBarController(),
        '/draw':(context) => DrawerPage(),
        '/button':(context) => ButtonPage(),
        '/textFile':(context) => TextFieldPage()
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
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('单行文本'),
            onPressed: () {
              Navigator.pushNamed(context, '/textFile');
            },
          )
        ],
      )
    );
  }
}


