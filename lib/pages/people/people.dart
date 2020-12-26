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
import './peopleItem.dart';


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
                PeopleItem(margin:0,title: '个人资料',routeName: "/information"),
                PeopleItem(margin:0,title: '我的收藏',routeName: "/collection",),
                PeopleItem(margin:0,title: '我的卡券',routeName: "/coupon",),
                PeopleItem(margin: 10.0,title: '我的金币',routeName: '/money'),
                PeopleItem(margin:0,title: '课程回放'),
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



