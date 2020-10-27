import 'dart:ui';

import 'package:flutter/material.dart';
import './storage.dart';
import './web.dart';

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
        '/storage':(context) => StoragePage(),
        '/web':(context) => WebPage()
      },
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
    );
  }
}


class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('缓存数据'),
            onPressed: () {
              Navigator.pushNamed(context, '/storage');
            },
          ),
          RaisedButton(
            child: Text('外部应用'),
            onPressed: () {
              Navigator.pushNamed(context, '/web');
            },
          )
        ],
      ),
    );
  }
}

