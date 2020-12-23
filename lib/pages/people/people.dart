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
      width: ScreenAdapter.width(750),
      height: ScreenAdapter.height(1334),
      color: Color.fromRGBO(238,238,238,1),
      child: Stack(
        children: <Widget>[
          Container(
            width: ScreenAdapter.width(750),
            height: ScreenAdapter.height(322),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage('http://tugua.oss-cn-hangzhou.aliyuncs.com/16086451694422710.png')
              ),
            ),
            child: Text('HELLO'),
          ),
          Container(
            margin: EdgeInsets.only(top:ScreenAdapter.height(322)),
            // color: Colors.white,
            width: ScreenAdapter.width(750),
            height: ScreenAdapter.height(1012),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom:ScreenAdapter.height(10)),
                  color: Colors.white,
                  width: ScreenAdapter.width(750),
                  height: ScreenAdapter.height(205),
                  child: Text('hello'),
                ),
                Container(
                  padding: EdgeInsets.only(left:ScreenAdapter.width(20),right: ScreenAdapter.width(20)),
                  width: ScreenAdapter.width(750),
                  height: ScreenAdapter.height(100),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      bottom: BorderSide(
                        width: 1,
                        color: Color.fromRGBO(246,246,250,1)
                      )
                    )
                  ),
                  child: Flex(
                        direction: Axis.horizontal,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child:Icon(Icons.star_outline),
                          ),
                          Expanded(
                            flex: 4,
                            child: Text('我的收藏'),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text('hello'),
                          ),
                        ],
                    ),
                ),
                Container(
                  padding: EdgeInsets.only(left:ScreenAdapter.width(20),right: ScreenAdapter.width(20)),
                  width: ScreenAdapter.width(750),
                  height: ScreenAdapter.height(100),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      bottom: BorderSide(
                        width: 1,
                        color: Color.fromRGBO(246,246,250,1)
                      )
                    )
                  ),
                  child: Flex(
                        direction: Axis.horizontal,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child:Icon(Icons.star_outline),
                          ),
                          Expanded(
                            flex: 4,
                            child: Text('我的收藏'),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text('hello'),
                          ),
                        ],
                    ),
                )
              ],
            ),
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
                color: Color.fromRGBO(238, 238, 238,1),
                borderRadius: BorderRadius.circular(20)
              ),
            ),
          )
        ],
      ),
    );
  }
}



