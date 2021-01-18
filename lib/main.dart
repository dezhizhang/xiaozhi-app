
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
      home: HeroAnimationRoute(),
    );
  }
}

class AnimatedImage extends AnimatedWidget{
  AnimatedImage({Key key,Animation<double> animation}):super(key: key,listenable: animation);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final Animation<double> animation = listenable;
    return Center(
      child: Image.asset('images/avator.png',width: animation.value,height: animation.value),
    );
  }

}

class HeroAnimationRoute extends StatefulWidget{
  _HeroAnimationRoute createState() => _HeroAnimationRoute();
}


class _HeroAnimationRoute extends State<HeroAnimationRoute>with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new AnimationController(
      duration: const Duration(seconds:3),
      vsync: this,
    );
    animation = new Tween(begin:0.0,end:300.0).animate(controller);
    controller.forward();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: AnimatedImage(animation: animation),
    );
  }
}









