/*
 * @Author: dezhizhang
 * @Date: 2020-10-24 15:07:50
 * @LastEditTime: 2020-12-13 20:04:51
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: /xiaozhi/lib/main.dart
 */

import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:HomeContent(),
    );
  }
}

class HomeContent extends StatelessWidget{
  double _turns = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(
       title: Text('首页'),
     ),
     body: Content()
   );
  }
}

class Content extends StatefulWidget{
  _Content createState() => _Content();
}

class _Content extends State<Content>{
  double _turns = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: <Widget>[
          TurnBox(
            turns: _turns,
            speed: 500,
            child: Icon(Icons.refresh,size: 50),
          ),
          TurnBox(
            turns: _turns,
            speed: 1000,
            child: Icon(Icons.refresh,size: 150),
          ),
          RaisedButton(
            child: Text('顺时什'),
            onPressed: () {
             setState(() {
               _turns+= 0.2;
             });
            }
          )
        ],
      ),
    );
  }
}

class TurnBox extends StatefulWidget{
  final double turns;
  final int speed;
  final Widget child;
  TurnBox({Key key,this.turns = .0,this.speed = 200, this.child}):super(key: key);
  _TurnBox createState() => _TurnBox();
}

class _TurnBox extends State<TurnBox> with SingleTickerProviderStateMixin{
  AnimationController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = new AnimationController(
      vsync: this,
      lowerBound:  -double.infinity,
      upperBound: double.infinity
    );
    _controller.value = widget.turns;
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RotationTransition(
      turns: _controller,
      child: widget.child,
    );
  }
  @override
  void didUpdateWidget(TurnBox oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    if(oldWidget.turns != widget.turns) {
      _controller.animateTo(
        widget.turns,
        duration: Duration(milliseconds: widget.speed??200),
        curve: Curves.easeOut,
      );
    }
  }
}
