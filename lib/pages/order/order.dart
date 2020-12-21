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
        title: Text('我的订单'),
      ),
      body:OrderContent()
    );
  }
}

class OrderContent extends StatefulWidget{
  _OrderContent createState() => _OrderContent();
}


class _OrderContent extends State<OrderContent>{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(238,238,238,1),
      child: Stack(
        children: <Widget>[
          ListView(),
          Positioned(
            left: 0,
            top: 0,
            child:Container(
              child: Text('hello'),
            )
          )
        ],
      ),
    );
  }
}

// class _OrderContent extends State<OrderContent>{
//   @override
//   Widget build(BuildContext context) {
  
//     // return Stack(
//     //   children: <Widget>[
//     //     ListView(
//     //       children: <Widget>[

//     //       ],
//     //     ),
//     //     Positioned(
//     //       top: 0,
//     //       left: 0,
//     //       child: Text('hello'),

//     //     )
//     //   ],
//     // );
//   }
// }

