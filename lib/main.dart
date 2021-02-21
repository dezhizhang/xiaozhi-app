/*
 * @Author: dezhizhang
 * @Date: 2020-10-24 15:07:50
 * @LastEditTime: 2020-12-13 20:04:51
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: /xiaozhi/lib/main.dart
 */

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import './routers/router.dart';
import './provider/counter.dart';
import './provider/cart.dart';

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
    return MultiProvider( //配置provider
      providers: [
        ChangeNotifierProvider(builder: (_) => Counter()),
        ChangeNotifierProvider(builder: (_) => Cart()),
      ],
      child:  MaterialApp(
      onGenerateRoute: onGenerateRoute,
      initialRoute: '/network',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate, 
        GlobalWidgetsLocalizations.delegate, 
      ],
      supportedLocales: [
        const Locale('zh', 'CH'), 
        const Locale('en', 'US'),
      ],
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
    ),
    );
  }
}