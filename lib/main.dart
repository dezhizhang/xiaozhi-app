import 'dart:ui';

import 'package:flutter/material.dart';
import './bottomsheet.dart';
import './logding.dart';
import './dateinfo.dart';
import './dateinfo2.dart';
import './constrom.dart';

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
      routes: {
        '/bottomsheet':(context) => BottomSheetPage(),
        '/loading':(context) => LoadingSheetPage(),
        '/dateinfo2':(context) => DateInfoPage2(),
        '/custom':(context) => ConstomPage(),
      },
      // routes: {
      //   "/alertDialog":(context) => AlertDialogPage(),
      // },
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
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('alertAialog'),
            onPressed: () {
              Navigator.pushNamed(context, '/alertDialog');
            },
          ),
          RaisedButton(
            child: Text('bottomsheet'),
            onPressed: () {
              Navigator.pushNamed(context, '/bottomsheet');
            },
          ),
          RaisedButton(
            child: Text('loading'),
            onPressed: () {
              Navigator.pushNamed(context, '/loading');
            },
          ),
          RaisedButton(
            child: Text('date'),
            onPressed: () {
              Navigator.pushNamed(context, '/dateinfo');
            },
          ),
          RaisedButton(
            child: Text('date2'),
            onPressed: () {
              Navigator.pushNamed(context, '/dateinfo2');
            },
          ),
          RaisedButton(
            child: Text('custrom'),
            onPressed: () {
              Navigator.pushNamed(context, '/custom');
            },
          )
        ],
      ),
    );
  }
}