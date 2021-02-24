/*
 * @Author: your name
 * @Date: 2021-02-24 22:12:20
 * @LastEditTime: 2021-02-24 23:07:13
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
    return PopupMenuButton<String>(
      initialValue: "语文",
      tooltip: "PopupMenuButton",
      color: Colors.white,
      elevation: 2,
      itemBuilder: (context) {
        return <PopupMenuEntry<String>>[
          PopupMenuItem<String>(
            value: "语文",
            child: Text("语文"),
          ),
          PopupMenuDivider(),
          PopupMenuItem<String>(
            value: "数学",
            child: Text("数学"),
          )
        ];
      },
    );
    // TODO: implement build
  //   return PopupMenuButton<String>(
  //     initialValue:"语文",
  //     tooltip: 'PopupMenuButton',
  //     color: Colors.red,
  //     elevation: 5,
  //     itemBuilder: (context) {
  //     return <PopupMenuEntry<String>>[
  //       PopupMenuItem<String>(
  //         value: '语文',
  //         child: Text('语文'),
  //       ),
  //       PopupMenuDivider(),
  //       PopupMenuItem<String>(
  //         value: '数学',
  //         child: Text('数学'),
  //       ),
  //       PopupMenuDivider(),
  //       PopupMenuItem<String>(
  //         value: '英语',
  //         child: Text('英语'),
  //       ),
  //       PopupMenuDivider(),
  //       PopupMenuItem<String>(
  //         value: '生物',
  //         child: Text('生物'),
  //       ),
  //       PopupMenuDivider(),
  //       PopupMenuItem<String>(
  //         value: '化学',
  //         child: Text('化学'),
  //       ),
  //     ];
  //   },
  // );
  }
}



