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
    return IconContainer(Icons.home,color: Colors.red,size: 100);
  }
}

class IconContainer extends StatelessWidget{
  double size = 32.0;
  Color color;
  IconData icon;
  IconContainer(this.icon,{this.color,this.size});
  
  @override
  Widget build(BuildContext context) {
    print(this.icon);
    // TODO: implement build
    return Container(
      width: 100,
      height: 100,
      color:this.color,
      child: Center(
        child: Icon(Icons.home,color: Colors.white,size:this.size),
      ),
    );
  }
}