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


class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        width: 300,
        height: 400,
        color: Colors.red,
        child: Stack(
          children: <Widget>[
            Align(
              alignment:Alignment.topLeft,
              child: Icon(Icons.home,size: 40,color: Colors.white),
            ),
            Align(
              alignment:Alignment.center,
              child: Icon(Icons.search,size: 40,color: Colors.white),
            ),
            Align(
              alignment:Alignment.bottomRight,
              child: Icon(Icons.settings,size: 40,color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
