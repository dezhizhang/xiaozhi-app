/*
 * @Author: dezhizhang
 * @Date: 2020-10-25 16:18:22
 * @LastEditTime: 2020-12-13 19:48:49
 * @LastEditors: Please set LastEditors
 * @Description: 个人信息页
 * @FilePath: /xiaozhi/lib/pages/people/people.dart
 */

import 'dart:ui';

import 'package:flutter/material.dart';
import '../../utils/utils.dart';


class People extends StatefulWidget{
  _People createState() => _People();
}

class _People extends State<People>{
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Container(
      color: Color.fromRGBO(238,238,238,1),
      child: Stack(
        children: <Widget>[
          Container(
           
            width: ScreenAdapter.width(750),
            height: ScreenAdapter.height(322),
            decoration: BoxDecoration(
              color: Colors.yellow,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage('http://tugua.oss-cn-hangzhou.aliyuncs.com/16086451694422710.png')
              ),
              // gradient: RadialGradient( //背景径向渐变
              //   colors: [Colors.red, Colors.orange],
              //   center: Alignment.topLeft,
              //   radius: .98
              // ),
              // borderRadius:BorderRadius.only(bottomLeft:Radius.circular(14),bottomRight:Radius.circular(14))
            ),
            child: Text('HELLO'),
          ),
          ListView(
            children: <Widget>[

            ],
          ),
          Positioned(
            top: 120,
            left: 20,
            right: 20,
            child: Container(
              width: ScreenAdapter.width(670),
              height: ScreenAdapter.height(302),
              child: Text('hello'),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
            ),
          )
        ],
      ),
    );
    // return Stack(
    //   children: <Widget>[
    //     Container(
    //       child: Text('header'),
    //     ),
    //     Positioned(
    //       top: 240,
    //       left: 40,
    //       right: 40,
    //       child: Text('hello'),

    //     )
    //   ],
    // );
  }
}



