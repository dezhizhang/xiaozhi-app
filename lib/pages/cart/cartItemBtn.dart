/*
 * @Author: dezhizhang
 * @Date: 2020-12-13 15:45:56
 * @LastEditTime: 2020-12-13 17:46:05
 * @LastEditors: Please set LastEditors
 * @Description: 购物车列表页
 * @FilePath: /xiaozhi/lib/pages/cart/cartItemBtn.dart
 */

import 'package:flutter/material.dart';
import '../../utils/utils.dart';
import './leftBtn.dart';
import './centerText.dart';
import './rightBtn.dart';
class CartItemBtn extends StatefulWidget{
  _CartItemBtn createState() => _CartItemBtn();
}

class _CartItemBtn extends State<CartItemBtn>{
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    // TODO: implement build
    // throw UnimplementedError();
    return Container(
      // alignment: Alignment.center,
      width: ScreenAdapter.width(165),
      height: ScreenAdapter.height(46),
      decoration: BoxDecoration(
        border: Border.all(
          width:1,
          color:Colors.black12
        )
      ),
      child: Row(
        children: <Widget>[
          LeftBtn(),
          CenterText(),
          RightBtn(),
        ],
      ),
    );
  }
}
