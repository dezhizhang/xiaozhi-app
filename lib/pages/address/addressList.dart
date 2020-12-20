
/*
 * @Author: dezhizhang
 * @Date: 2020-12-20 17:33:26
 * @LastEditTime: 2020-12-20 20:02:23
 * @LastEditors: dezhizhang
 * @Description: 地址页面
 * @FilePath: /xiaozhi/lib/routers/router.dart
 */
import 'dart:ui';

import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class AddressList extends StatefulWidget{
  _AddressList createState() => _AddressList();
}

class _AddressList extends State<AddressList>{
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Container(
      width: double.infinity,
      color: Color.fromRGBO(238, 238, 238,1),
      child: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.only(bottom:ScreenAdapter.height(16)),
                width: double.infinity,
                height: ScreenAdapter.height(280),
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom:ScreenAdapter.height(32)),
                      child: Row(
                        children: <Widget>[
                          Text('包图君',style: TextStyle(
                            fontFamily: '微软雅黑',
                            color: Color.fromRGBO(52,52,52,1),
                            fontSize: ScreenAdapter.fontSize(32)
                          )),
                          Container(
                            margin: EdgeInsets.only(left:ScreenAdapter.width(10)),
                            child: Text('158****4568',style: TextStyle(
                              color: Color.fromRGBO(52,52,52,1),
                              fontFamily: '微软雅黑',
                              fontSize: ScreenAdapter.fontSize(32),
                            )),
                          )
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(bottom:ScreenAdapter.height(32)),
                      child: Text('上海市黄浦区***街道568',style: TextStyle(
                        fontFamily: '微软雅黑',
                        color: Color.fromRGBO(143, 143, 143, 1),
                        fontSize: ScreenAdapter.fontSize(26),
                      )),
                    ),
                    Divider(),
                    Container( //最底边
                      child:  Flex(
                            direction: Axis.horizontal,
                            children: <Widget>[
                              Expanded(
                                flex: 2,
                                child: Row(
                                  children: <Widget>[
                                    Radio(
                                      value: true,
                                      groupValue: true,
                                      activeColor: Colors.blue,
                                      onChanged: (value) {

                                      },
                                    ),
                                    Text('默认地址',style: TextStyle(
                                      color: Color.fromRGBO(134, 134, 134, 1),
                                      fontFamily: '微软雅黑',
                                      fontSize: ScreenAdapter.fontSize(26)
                                    ))
                                  ],
                                )
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.edit_sharp,color: Color.fromRGBO(143,143,143,1)),
                                      Text('编辑',style: TextStyle(
                                        fontSize: ScreenAdapter.fontSize(26),
                                        color: Color.fromRGBO(143,143,143,1),
                                        fontFamily: '微软雅黑'
                                      )),
                                      Icon(Icons.delete,color: Color.fromRGBO(143,143,143,1)),
                                      Text('删除',style: TextStyle(
                                        fontFamily: '微软雅黑',
                                        color: Color.fromRGBO(143,143,143,1),
                                        fontSize: ScreenAdapter.fontSize(26)
                                      ))
                                    ],
                                  )
                                ),
                              )

                            ],
                          ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom:10),
                width: double.infinity,
                height: ScreenAdapter.height(280),
                color: Colors.white,
              )
            ],
          ),
          Positioned(
            bottom: 0,
            width: ScreenAdapter.width(750),
            height: ScreenAdapter.height(80),
            child: Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [Colors.blue,Colors.blueAccent],
                  // center: Alignment.centerRight,
                  radius: .98
                )
              ),
              padding: EdgeInsets.all(5),
              width: ScreenAdapter.width(750),
              height: ScreenAdapter.height(80),
              child: InkWell(
                child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.add,color: Colors.white),
                    Text('新增收货地址',style: TextStyle(
                      color: Colors.white,
                      fontSize: ScreenAdapter.height(25)
                    ))
                  ],
                ),
                onTap: () {

                },
              )
            ),
          )
        ],
      )
    );
  }
}