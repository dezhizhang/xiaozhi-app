/*
 * @Author: dezhizhang
 * @Date: 2020-10-25 16:18:22
 * @LastEditTime: 2020-12-13 19:48:49
 * @LastEditors: Please set LastEditors
 * @Description: 个人信息页
 * @FilePath: /xiaozhi/lib/pages/people/people.dart
 */

import 'package:flutter/material.dart';


class People extends StatefulWidget{
  _People createState() => _People();
}

class _People extends State<People>{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
         child: RaisedButton(
           child: Text('订单页'),
           onPressed: () {
             Navigator.pushNamed(context, '/order');
           },
         ),
        ),
      ],
    );

  }
}

