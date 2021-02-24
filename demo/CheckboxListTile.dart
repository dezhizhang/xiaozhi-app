/*
 * @Author: your name
 * @Date: 2021-02-24 22:12:20
 * @LastEditTime: 2021-02-24 22:21:45
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
      home:Scaffold(
        appBar: AppBar(
          title: Text("AlertDialog"),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatefulWidget{
  _HomeContent createState() => _HomeContent();
}

class _HomeContent extends State<HomeContent>{
  bool _checkValue = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 130,
      child: CheckboxListTile(
        title: Text("老孟"),
        value: _checkValue,
        onChanged: (value) {
          setState(() {
            _checkValue = value!;
          });
        },
      ),
    );
  }
}



