/**
 * @author:zhangdezhi
 * @date:2020-10-18
 * @desc:动态列表
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
          title: Text('晓智商城'),
        ),
        body: HomeContent(),
      ),
      theme:ThemeData(
        primarySwatch: Colors.pink
      )
    );
  }
}

class HomeContent extends StatelessWidget{
  List<Widget> _getData() {
    List<Widget> list = new List();
    for(var i=0;i < 100;i++) {
      list.add(
          ListTile(
          leading: Image.network('http://tugua.oss-cn-hangzhou.aliyuncs.com/16007371732208143.jpeg'),
          title: Text('新闻标题${i}'),
          subtitle: Text('新闻内容新闻内容新闻内容新闻内容新闻内容新闻内容新闻内容'),
        ),
      );
    }
    return list;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: this._getData()
    );
  }
}
