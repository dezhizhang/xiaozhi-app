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
          // Container(
          //   color: Colors.white,
          //   width: ScreenAdapter.height(750),
          //   height: ScreenAdapter.width(489),
          //   child:Container(
          //   width: ScreenAdapter.width(750),
          //   height: ScreenAdapter.height(322),
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //       fit: BoxFit.cover,
          //       image: NetworkImage('http://tugua.oss-cn-hangzhou.aliyuncs.com/16086451694422710.png')
          //     ),
          //   ),
          //   child: Text('HELLO'),
          // ),
          // ),
          
          // Container(
          //   margin: EdgeInsets.only(top:ScreenAdapter.height(322)),
          //   color: Colors.white,
          //   width: ScreenAdapter.width(750),
          //   height: ScreenAdapter.height(1012),
          //   child: ListView(
          //     children: <Widget>[
          //       Container(
          //         color: Colors.yellow,
          //         width: ScreenAdapter.width(750),
          //         height: ScreenAdapter.height(120),
          //       )
          //     ],
          //   ),
          // ),
          // ListView(
          //   children: <Widget>[
          //     Container(
          //       width: ScreenAdapter.width(750),
          //       height: ScreenAdapter.height(120),
          //       margin: EdgeInsets.only(top:ScreenAdapter.height(322),bottom: ),
          //       decoration: BoxDecoration(
          //         color: Colors.white,
          //         border: Border(
          //           bottom: BorderSide(
          //             width: 1,
          //             color: Color.fromRGBO(179,39,79,1)
          //           )
          //         )
          //       ),
          //       child: Row(),
          //     ),

          //   ],
          // ),
          Positioned(
            top: 120,
            left: 20,
            right: 20,
            child: Container(
              width: ScreenAdapter.width(670),
              height: ScreenAdapter.height(302),
              child: Text('hello'),
              decoration: BoxDecoration(
                color: Color.fromRGBO(238, 238, 238,1),
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



