/*
 * @Author: your name
 * @Date: 2020-10-25 16:22:12
 * @LastEditTime: 2020-12-13 14:49:09
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: /xiaozhi/lib/pages/cart/cart.dart
 */
import 'package:flutter/material.dart';
import '../../utils/utils.dart';
import './cartItem.dart';

class Cart extends StatefulWidget{
  _Cart createState() => _Cart();
}

class _Cart extends State<Cart>{
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            CartItem(),
          ],
        ),
        Positioned(
          bottom: 0,
          width:ScreenAdapter.width(750),
          height: ScreenAdapter.height(80),
          child: Container(
            color: Colors.red,
            child: Text('bottom'),
          ),
        )
      ],
    );
  }
}


