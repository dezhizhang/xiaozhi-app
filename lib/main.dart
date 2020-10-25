
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  MyApp({Key key}):super(key:key);
  _MyApp createState() => _MyApp();
}

class _MyApp extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('贵彩办公'),
        ),
        body: Text('hello'),
      ),
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
    );
  }
}


