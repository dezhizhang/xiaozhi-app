/**
 * @author:dezhizhang
 * @date:2020-10-18
 * @desc:圆角图片
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
          title: Text('晓智商城'),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.pink
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
          color: Colors.pink,
          image: DecorationImage(
            image:  NetworkImage(
              'http://tugua.oss-cn-hangzhou.aliyuncs.com/16006151939994201.jpeg'
            ),
            fit: BoxFit.cover
          ),
          borderRadius: BorderRadius.circular(150)
        ),
      ),
    );
  }
}