
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
              Text('hello')
            ],
          ),
          Positioned(
            bottom: 0,
            width: ScreenAdapter.width(750),
            height: ScreenAdapter.height(80),
            child: Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [Colors.blue,Colors.pink],
                  center: Alignment.centerRight,
                  radius: .98
                )
              ),
              padding: EdgeInsets.all(5),
              width: ScreenAdapter.width(750),
              height: ScreenAdapter.height(80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.add,color: Colors.white),
                  Text('新增收货地址',style: TextStyle(
                    color: Colors.white
                  ))
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}