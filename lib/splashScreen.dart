import 'dart:ui';

import 'package:flutter/material.dart';
 
class SplashScreen extends StatefulWidget{
  _SplashScreen createState() => _SplashScreen();
 
}

class _SplashScreen extends State<SplashScreen> with SingleTickerProviderStateMixin{
  AnimationController _controller;
  Animation _animation;
  @override
  @override
  void initState() { 
    super.initState();
    _controller = AnimationController(vsync:this,duration: Duration(milliseconds: 3000));
    _animation = Tween(begin: 0,end: 1).animate(_controller);
    _animation.addStatusListener((status) {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => MyHomePage()),
        (route) => route == null
      );
    });
  }
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Image.network(
        'http://tugua.oss-cn-hangzhou.aliyuncs.com/16007371921474207.jpeg',
        fit: BoxFit.cover,
        scale: 2.0,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text('hello');
  }
}
