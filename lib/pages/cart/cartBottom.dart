/*
 * @Author: dezhizhang
 * @Date: 2020-12-13 18:14:56
 * @LastEditTime: 2020-12-13 18:17:42
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: /xiaozhi/lib/pages/cart/cartBottom.dart
 */


import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class CartBottom extends StatefulWidget{
  _CartBottom createState() => _CartBottom();
}

class _CartBottom extends State<CartBottom>{
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Container(
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
          );
  }
}