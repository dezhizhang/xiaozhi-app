/*
 * @Author: your name
 * @Date: 2020-10-25 16:22:12
 * @LastEditTime: 2020-12-13 18:12:10
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: /xiaozhi/lib/pages/cart/cart.dart
 */
import 'dart:ui';

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
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                top:BorderSide(
                  width: 1,
                  color: Colors.black12
                )
              )
            ),
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: ScreenAdapter.width(60),
                        child: Checkbox(
                          value: true,
                          activeColor: Colors.pink,
                          onChanged: (val) {

                          },
                        ),
                      ),
                      Text('全选')
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height:ScreenAdapter.height(80),
                    child: RaisedButton(
                      color: Colors.pink,
                      child: Text('结算',style: TextStyle(
                        color: Colors.white
                      )),
                      onPressed: () {
                        
                      },
                    ),
                  ),
                )
              ],
            ),
            // child: Text('bottom'),
          ),
        )
      ],
    );
  }
}


