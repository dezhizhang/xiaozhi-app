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
   return GridView.count(
     crossAxisCount: 2,
     childAspectRatio: 1.5,
     children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child:  Image.network('http://tugua.oss-cn-hangzhou.aliyuncs.com/16007371732208143.jpeg',fit: BoxFit.cover),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Image.network('http://tugua.oss-cn-hangzhou.aliyuncs.com/16007371732208143.jpeg',fit: BoxFit.cover),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child:  Image.network('http://tugua.oss-cn-hangzhou.aliyuncs.com/16007371732208143.jpeg',fit: BoxFit.cover),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Image.network('http://tugua.oss-cn-hangzhou.aliyuncs.com/16007371732208143.jpeg',fit: BoxFit.cover),
        ),
          Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child:  Image.network('http://tugua.oss-cn-hangzhou.aliyuncs.com/16007371732208143.jpeg',fit: BoxFit.cover),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Image.network('http://tugua.oss-cn-hangzhou.aliyuncs.com/16007371732208143.jpeg',fit: BoxFit.cover),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child:  Image.network('http://tugua.oss-cn-hangzhou.aliyuncs.com/16007371732208143.jpeg',fit: BoxFit.cover),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Image.network('http://tugua.oss-cn-hangzhou.aliyuncs.com/16007371732208143.jpeg',fit: BoxFit.cover),
        )
     ],
   );
  }
}