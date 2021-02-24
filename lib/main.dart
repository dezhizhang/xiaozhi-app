/*
 * @Author: your name
 * @Date: 2021-02-24 09:02:28
 * @LastEditTime: 2021-02-24 09:10:42
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
        endDrawer:Drawer(),
        
        // drawer: Drawer(),
        body: HomeContent(),
      ),
    );
  }
}


class HomeContent extends StatefulWidget{
  _HomeContent createState() => _HomeContent();
}

class _HomeContent extends State<HomeContent>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Listener(
      onPointerDown: (PointerDownEvent pointerDownEvent) {
        print('$pointerDownEvent');
      },
      onPointerMove: (PointerMoveEvent pointerMoveEvent) {
        print('$pointerMoveEvent');
      },
      onPointerUp: (PointerUpEvent upEvent) {
        print('$upEvent');
      },
      child: Container(
        height: 200,
        width: 200,
        color: Colors.blue,
        alignment: Alignment.center,
      ),
    );
  }
}