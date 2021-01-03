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
import './peopleCard.dart';



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
                    color: Colors.white,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage('http://tugua.oss-cn-hangzhou.aliyuncs.com/16086451694422710.png')
                    ),
                    
                  ),
                  width:ScreenAdapter.width(750),
                  height:ScreenAdapter.height(290),
                  child: Container(
                    height: ScreenAdapter.height(10),
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
                        height: ScreenAdapter.height(90),
                        child: Flex(
                          direction: Axis.horizontal,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left:ScreenAdapter.width(30)),
                              width: ScreenAdapter.width(114),
                              height:ScreenAdapter.height(100),  
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width:1,
                                  color:Colors.white,
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                                image: DecorationImage(
                                  image: NetworkImage('http://tugua.oss-cn-hangzhou.aliyuncs.com/1600737225621499.jpeg'),
                                  fit: BoxFit.cover
                                )
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(top:ScreenAdapter.height(10)),
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
                  )
                ),
                PeopleCard(),
              ],
            ),
          ),
          Container(
            width: ScreenAdapter.width(750),
            height: ScreenAdapter.height(814),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                PeopleItem(title: '我的消息',margin:0,routeName:'/system')
              ],
            ),
          )
        ]
      ),
    );
  }
}



