
/*
 * @Author: dezhizhang
 * @Date: 2020-10-24 15:07:50
 * @LastEditTime: 2021-02-23 22:19:45
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
   
    // TODO: implement build
    return Container(
      child: AbsorbPointer(
        absorbing: false,
         child: Row(
           children: <Widget>[
              RaisedButton(
                child: Text("1"),
                onPressed: (){
                
                print('1');
              },),
              RaisedButton(
                child: Text("2"),
                onPressed: (){
                print('2');
              }),
              RaisedButton(
                child: Text("3"),
                onPressed: (){
                print('3');
              }),
              RaisedButton(
                child: Text("4"),
                onPressed: (){
              
                print('4');
              }),
           ],
         ),
      ),
    );
  }
}






