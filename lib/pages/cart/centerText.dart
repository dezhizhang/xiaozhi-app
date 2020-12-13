/*
 * @Author: dezhizhang
 * @Date: 2020-12-13 17:42:16
 * @LastEditTime: 2020-12-13 17:51:27
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: /xiaozhi/lib/pages/cart/centerText.dart
 */
import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class CenterText extends StatefulWidget{
  // @override
  _CenterText createState() => _CenterText();
}

class _CenterText extends State<CenterText>{
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Container(
      decoration: BoxDecoration(
        border: Border(
          left:BorderSide(
            width: 1,
            color: Colors.black12
          ),
          right: BorderSide(
            width: 1,
            color: Colors.black12
          )
        )
      ),
      alignment: Alignment.center,
      width:  ScreenAdapter.width(70),
      height: ScreenAdapter.height(45),
      child: Text('1'),
    );
  }
}

