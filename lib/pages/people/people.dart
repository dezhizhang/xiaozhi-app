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
      color:Color.fromRGBO(238,238,238,1),
      width:ScreenAdapter.width(750),
      height:ScreenAdapter.height(1334),
      child: ListView(
        children:<Widget>[
          Container(
            margin: EdgeInsets.only(bottom:ScreenAdapter.height(20)),
            color: Colors.white,
            width:ScreenAdapter.width(750),
            height:ScreenAdapter.height(500),
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage('http://tugua.oss-cn-hangzhou.aliyuncs.com/16086451694422710.png')
                    ),
                    
                  ),
                  width:ScreenAdapter.width(750),
                  height:ScreenAdapter.height(290),
                  child: Column(
                    children: <Widget>[
                      //设置
                      InkWell(
                        child:Container(
                          padding: EdgeInsets.only(top:ScreenAdapter.height(20),right:ScreenAdapter.width(30)),
                          alignment: Alignment.centerRight,
                          child:Icon(Icons.settings,color: Colors.white),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/setting');
                        },
                      ),
                      Container(
                        alignment: Alignment.center,
                        width:ScreenAdapter.width(750),
                        height: ScreenAdapter.height(114),
                        child: Flex(
                          direction: Axis.horizontal,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left:ScreenAdapter.width(30)),
                              width: ScreenAdapter.width(114),
                              height:ScreenAdapter.height(114),
                              color: Colors.red,
                              // decoration: BoxDecoration(
                              //   color: Colors.green,
                              //   borderRadius: BorderRadius.circular(100)
                              // ),
                             
                            ),
                            Expanded(
                              flex: 4,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Column(
                                  children: <Widget>[
                                    Text('路啊路',style: TextStyle(
                                      color: Colors.white,
                                      fontSize: ScreenAdapter.fontSize(36),
                                      fontFamily: '微软雅黑',
                                      // fontWeight: FontWeight.bold
                                    )),
                                    Container(
                                      margin: EdgeInsets.only(left:ScreenAdapter.width(30)),
                                      child:Text('ID:65788768',style: TextStyle(
                                        color: Colors.white,
                                        fontSize: ScreenAdapter.fontSize(24),
                                        fontFamily: '微软雅黑',
                                      )) ,
                                    ),
                                  ],
                                ),
                                height:ScreenAdapter.height(114)
                              )
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                alignment: Alignment.center,
                                width: ScreenAdapter.width(200),
                                height:ScreenAdapter.height(56),
                                decoration: BoxDecoration(
                                  gradient: RadialGradient(
                                    colors: [Color.fromRGBO(241,183,18,1),Color.fromRGBO(228,176,29,1),Color.fromRGBO(254,188,11,1)]
                                  ),
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(28),bottomLeft: Radius.circular(28))
                                ),
                                // color: Colors.yellow,
                                child: Text('推荐送礼',style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: '微软雅黑',
                                  fontSize: ScreenAdapter.fontSize(24),
                                )),
                              )
                            ),

                          ],
                          // Expl
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: ScreenAdapter.height(160),
                  left:ScreenAdapter.width(30) ,
                  child: Container(
                    width: ScreenAdapter.width(670),
                    height:ScreenAdapter.height(302),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(ScreenAdapter.width(20)),
                      boxShadow:[
                        BoxShadow(
                          color: Colors.black54,
                          offset: Offset(2.0,2.0),
                          blurRadius: 4.0
                        )
                      ]
                    ),
                    
                  )
                )
              ],
            ),
          ),
          Container(
            width: ScreenAdapter.width(750),
            height: ScreenAdapter.height(814),
            color: Colors.white,
            child: Text('change'),
          )
        ]
      ),
    );
  }
}



