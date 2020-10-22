/**
 * @author:zhangdezhi
 * @date:2020-10-17
 * @desc:容器组件
*/

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text('贵彩办公'),
       ),
       body:HomeContent()
     ),
   );
  }
}


class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Container(
     child: Text('我是一个容器组件'),
     width: 300.0,
     height: 300.0,
     alignment: Alignment.center,
     decoration: BoxDecoration(
       color: Colors.blueGrey,
       border: Border.all(
         color:Colors.yellow,
         width:2.0
       )
     ),
   );
  }
}


