
import 'package:flutter/material.dart';
import './date.dart';
import './swiper.dart';
import './dialog.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('晓智商城'),
        ),
        body: HomeContent(),
      ),
      routes: {
       '/date':(context) => DatePage(),
       '/swiper':(context) => SwierPage(),
       '/dialog':(context) => DialogPage()
      },
      theme: ThemeData(
        primarySwatch: Colors.blueGrey
      ),
    );
  }
}


class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('单行文本'),
            onPressed: () {
              Navigator.pushNamed(context, '/date');
            },
          ),
          RaisedButton(
            child: Text('轮播图'),
            onPressed: () {
              Navigator.pushNamed(context, '/swiper');
            },
          ),
          RaisedButton(
            child: Text('dialog'),
            onPressed: () {
              Navigator.pushNamed(context, '/dialog');
            },
          )
        
        ],
      )
    );
  }
}




