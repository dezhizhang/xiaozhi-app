
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
import './addressItem.dart';

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
              AddressItem(),
              AddressItem(),
              AddressItem(),
              AddressItem(),
              // Container(
              //   margin: EdgeInsets.only(bottom:10),
              //   width: double.infinity,
              //   height: ScreenAdapter.height(280),
              //   color: Colors.white,
              // )
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