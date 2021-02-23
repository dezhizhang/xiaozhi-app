/*
 * @Author: your name
 * @Date: 2021-02-23 22:43:13
 * @LastEditTime: 2021-02-23 22:52:02
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: /xiaozhi/lib/main.dart
 */



import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


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
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate, 
        GlobalWidgetsLocalizations.delegate, 
      ],
      supportedLocales: [
        const Locale('zh', 'CH'),
        const Locale('en', 'US'),
      ],
      locale: Locale('zh'),
      home:HomeContent(),
    );
  }
}

class HomeContent extends StatefulWidget{
  _HomeContent createState() => _HomeContent();
}

class _HomeContent extends State<HomeContent>{
  int _selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ActionChip(
    avatar: CircleAvatar(
      backgroundColor: Colors.grey.shade800,
      child: Text('孟'),
    ),
    label: Text('老孟'),
    onPressed: () {
      print("onPressed");
    });

  
  }
}

