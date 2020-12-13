/*
 * @Author: dezhizhang
 * @Date: 2020-12-13 18:29:00
 * @LastEditTime: 2020-12-13 20:30:13
 * @LastEditors: Please set LastEditors
 * @Description: 订单页面
 * @FilePath: /xiaozhi/lib/pages/order/order.dart
 */


import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class Order extends StatefulWidget{
  _Order createState() => _Order();
}

class _Order extends State<Order>{
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('订单列表'),
      ),
      body: Stack(
        children: <Widget>[
          ListView(),
          Positioned()
        ],
      ),
    );
  }
}