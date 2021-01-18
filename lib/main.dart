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
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: NotificationListener(
        onNotification: (notification) {
           switch(notification.runtimeType) {
             case ScrollSpringSimulation: print("开始滚动");break;
             case ScrollUpdateNotification: print('正在滚动');break;
             case ScrollUpdateNotification: print('滚动停止');break;
             case OverscrollNotification: print('滚动到边界');break;
           }
        },
        child:  ListView.builder(
        itemCount: 100,
        itemBuilder: (context,index) {
          return ListTile(title:Text('${index}'));
        },
      ),
      ),
    );
  }
}











