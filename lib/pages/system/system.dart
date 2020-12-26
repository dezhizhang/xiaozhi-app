

/*
 * @Author: dezhizhang
 * @Date: 2020-12-25 16:18:22
 * @LastEditTime: 2020-12-13 19:48:49
 * @LastEditors: Please set LastEditors
 * @Description: 系统通知页面
 * @FilePath: /xiaozhi/lib/pages/people/people.dart
 */
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../utils/utils.dart';
import './systemItem.dart';


class System extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('系统通知'),
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
    ScreenAdapter.init(context);
    return Container(
      padding: EdgeInsets.all(ScreenAdapter.width(30)),
      width:ScreenAdapter.width(750),
      height: ScreenAdapter.height(1334),
      color:Color.fromRGBO(238,238,238,1),
      child: ListView(
        children: <Widget>[
          SystemItem(),
          SystemItem(),
        ],
      ),
    );
  }
}