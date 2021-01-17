
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
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
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      home: HomeContent(),
    );
  }
}
 class HomeContent extends StatefulWidget {
  HomeContent({Key key}) : super(key: key);

  @override
  _HomeContent createState() => _HomeContent();
}

class _HomeContent extends State<HomeContent>{
  TapGestureRecognizer _tapGestureRecognizer = new TapGestureRecognizer();
  bool _toggle = false; //变色开关
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: Center(
        child: Text.rich(TextSpan(
          children: [
            TextSpan(text: '你好世界'),
            TextSpan(text: '点我变色',style: TextStyle(
              fontSize: 30,
              color: _toggle ? Colors.blue:Colors.red
            ),
            recognizer: _tapGestureRecognizer
            ..onTap = () {
              setState(() {
                _toggle = !_toggle;
              });
            }
            ),
            TextSpan(text: '你好世界')
          ]
        )),
      ),
    );
}
}









