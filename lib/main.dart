
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
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Listener(
      child: AbsorbPointer(
        child: Listener(
          child: Container(
            color: Colors.red,
            width: 200,
            height: 100,
          ),
          onPointerDown: (event) => print('in'),
        ),
      ),
      onPointerDown: (event) => print('up'),
    );
  }
}



