/*
 * @Author: dezhi
 * @Date: 2021-02-18
 * @LastEditTime: 2021-01-18
 * @Description:详情底部组件
 */

import 'package:flutter/material.dart';
import '../../utils/utils.dart';
import './bottomIcon.dart';

class Bottom extends StatefulWidget {
  _Bottom createState() => _Bottom();
}

class _Bottom extends State<Bottom> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    // TODO: implement build
    return Positioned(
        height: ScreenAdapter.height(80),
        width: ScreenAdapter.width(750),
        bottom: 0,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border(top: BorderSide(color: Colors.black26, width: 1))),
          child: Row(
            children: <Widget>[
              BottomIcon(icon: Icons.shopping_cart, title: '店铺'),
              BottomIcon(icon: Icons.dashboard_customize, title: '客服'),
              BottomIcon(icon: Icons.shopping_cart, title: '购物车'),
              Container(
                margin: EdgeInsets.only(left: ScreenAdapter.width(20)),
                height: ScreenAdapter.height(66),
                width: ScreenAdapter.width(200),
                alignment: Alignment.center,
                child: Text('加入购物车', style: TextStyle(color: Colors.white)),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(253, 1, 0, 0.9),
                    borderRadius: BorderRadius.circular(30)),
              ),
              Container(
                margin: EdgeInsets.only(left: ScreenAdapter.width(20)),
                height: ScreenAdapter.height(66),
                width: ScreenAdapter.width(200),
                alignment: Alignment.center,
                child: Text(
                  "立即购买",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(30)),
              )
            ],
          ),
        ));
  }
}
