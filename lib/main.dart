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
import './routers/router.dart';
import './provider/counter.dart';

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
      ],
      child:  MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: '/',
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
    ),
    );
  }
}