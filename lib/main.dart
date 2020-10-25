
import 'package:flutter/material.dart';
import './pages/tabs/tabs.dart';

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
      home:Tabs(),
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
    );
  }
}





