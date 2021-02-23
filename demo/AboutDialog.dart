/*
 * @Author: dezhizhang
 * @Date: 2020-10-24 15:07:50
 * @LastEditTime: 2021-02-23 22:11:16
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

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('副文本组件'),
      ),
      body: Content(),
    );
  }
}

class Content extends StatefulWidget{
  _Content createState() => _Content();
}




class _Content extends State<Content>{
  
  @override
  Widget build(BuildContext context) {
    _showAboutDialog() {
      showAboutDialog(
        context: context,
        applicationIcon: Image.asset(
          "images/avator.png",
          width: 100,
          height: 100,
        ),
        applicationName: "应用程序",
        applicationVersion: "1.0.0",
        applicationLegalese: "茵曼程序",
        children:<Widget>[
          Container(
            height: 30,
            color: Colors.red,
          )
        ]
      );
    }
    // TODO: implement build
    return Container(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('弹框'),
            onPressed: _showAboutDialog,
           )
        ],
      ),
    );
  }
}






