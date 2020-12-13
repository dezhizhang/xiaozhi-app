/*
 * @Author: dezhizhang
 * @Date: 2020-12-13 17:30:57
 * @LastEditTime: 2020-12-13 17:36:33
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: /xiaozhi/lib/pages/cart/leftBtn.dart
 */
  


import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class LeftBtn extends StatefulWidget{
  _LeftBtn createState() => _LeftBtn();
}

class _LeftBtn extends State<LeftBtn>{
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    // TODO: implement build
    return Container(
      width:ScreenAdapter.width(45),
      height: ScreenAdapter.height(45),
      alignment: Alignment.center,
      child: Text('-'),
    );
  }
}