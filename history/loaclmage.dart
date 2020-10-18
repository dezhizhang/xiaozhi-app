/**
 * @author:zhangdezhi
 * @date:2020-10-18
 * @desc:本地图片
*/
import 'dart:ui';

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
       body: HomeContent(),
     ),
     theme: ThemeData(
       primarySwatch: Colors.pink,
     ),
   );
  }
}



class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(150)
        ),
        child: Image.asset('images/avator.png'),
      ),
    );
  }
}