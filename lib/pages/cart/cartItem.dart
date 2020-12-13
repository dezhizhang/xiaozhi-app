/*
 * @Author: dezhizhang
 * @Date: 2020-12-13 14:44:07
 * @LastEditTime: 2020-12-13 15:23:14
 * @LastEditors: Please set LastEditors
 * @Description: 购物车列表页
 * @FilePath: /xiaozhi/lib/pages/cart/cartItem.dart
 */
import 'dart:ui';
import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class CartItem extends StatefulWidget{
  _CartItem createState() => _CartItem();
}

class _CartItem extends State<CartItem>{
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    // TODO: implement build
    return Container(
      height: ScreenAdapter.height(200),
      // color: Colors.yellow,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Colors.black12
          )
        )
      ),
      child: Row(
        children: <Widget>[
          Container(
            width: ScreenAdapter.width(60),
            child: Checkbox(
              value: true,
              onChanged: (val) {

              },
              activeColor: Colors.pink,
            ),
          ),
          Container(
            padding: EdgeInsets.all(ScreenAdapter.width(16)),
            width: ScreenAdapter.width(220),
            child: Image.network('http://tugua.oss-cn-hangzhou.aliyuncs.com/16009096677306121.jpeg',fit: BoxFit.cover),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(ScreenAdapter.width(16)),
                  child:  Text("2月12日0—24时，31个省（自治区、直辖市）和新疆生产建设兵团报告新增确诊病例24例，其中境外输入病例19例（上海10例，北京2例，四川2例，黑龙江1例，江苏1例，山东1例，广东1例，云南1例），本土病例5例（黑龙江4例，四川1例）；无新增死亡病例；新增疑似病例1例，为境外输入病例（在上海）",maxLines: 3,),
                ),
                Container(
                  padding: EdgeInsets.all(ScreenAdapter.width(16)),
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text('￥12',
                          style: TextStyle(
                          color: Colors.red
                        )),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
