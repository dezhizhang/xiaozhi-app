import 'dart:ui';

import 'package:flutter/material.dart';
import './bottomsheet.dart';
import './logding.dart';
import './dateinfo.dart';
import './dateinfo2.dart';
import './constrom.dart';
import './bottomBar.dart';
import './navigator.dart';
import './search.dart';

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
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('首页'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text('分类')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('搜索')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('我的')
            ),
          ]
        ),
      
      ),
      routes: {
        '/bottomsheet':(context) => BottomSheetPage(),
        '/loading':(context) => LoadingSheetPage(),
        '/dateinfo2':(context) => DateInfoPage2(),
        '/custom':(context) => ConstomPage(),
        '/bottombar':(context) => BottomBarPage(),
        '/navbar':(context) => NavigatorPage(),
        '/search':(context) => SearchPage(),
      },
      // routes: {
      //   "/alertDialog":(context) => AlertDialogPage(),
      // },
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
    );
  }
}


class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('alertAialog'),
            onPressed: () {
              Navigator.pushNamed(context, '/alertDialog');
            },
          ),
          RaisedButton(
            child: Text('bottomsheet'),
            onPressed: () {
              Navigator.pushNamed(context, '/bottomsheet');
            },
          ),
          RaisedButton(
            child: Text('loading'),
            onPressed: () {
              Navigator.pushNamed(context, '/loading');
            },
          ),
          RaisedButton(
            child: Text('date'),
            onPressed: () {
              Navigator.pushNamed(context, '/dateinfo');
            },
          ),
          RaisedButton(
            child: Text('date2'),
            onPressed: () {
              Navigator.pushNamed(context, '/dateinfo2');
            },
          ),
          RaisedButton(
            child: Text('custrom'),
            onPressed: () {
              Navigator.pushNamed(context, '/custom');
            },
          ),
          RaisedButton(
            child: Text('国际化'),
            color: Colors.yellow,
            onPressed: () {
              Navigator.pushNamed(context, '/local');
            },
          ),
          RaisedButton(
            child: Text('bottomBar'),
            onPressed: () {
              Navigator.pushNamed(context, '/bottombar');
            },
          ),
          RaisedButton(
            child: Text('navbar'),
            onPressed: () {
              Navigator.pushNamed(context, '/navbar');
            },
          ),
          RaisedButton(
            child: Text('search'),
            onPressed: () {
              Navigator.pushNamed(context, '/search');
            },
          )
        ],
      ),
    );
  }
}