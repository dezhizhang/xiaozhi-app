/*
 * @Author: your name
 * @Date: 2021-02-24 23:08:33
 * @LastEditTime: 2021-02-24 23:15:27
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: /xiaozhi/lib/main.dart
 */
import 'package:flutter/cupertino.dart';
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
      home:Scaffold(
        appBar: AppBar(
          title: Text("AlertDialog"),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          LinearProgressIndicator(
            value:0.3,
            backgroundColor: Colors.greenAccent,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
          ),
          CupertinoActivityIndicator(
            radius: 100,
          )
          // LinearProgressIndicator(
          //   value: 0.3,
          //   backgroundColor: Colors.greenAccent,
          //   valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
          // ),
          // CupertinoActivityIndicator(
          //   radius: 10,
          // ),
          // RefreshProgressIndicator(
          //   backgroundColor: Colors.greenAccent,
          //   valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
          //   strokeWidth: 5.0,
          // )
        ],
      ),
    );
  }
}
