
/*
 * @Author: dezhi
 * @Date: 2021-02-18
 * @LastEditTime: 2021-01-18
 * @Description:详情底部弹窗
 */

import 'package:flutter/material.dart';
import '../../utils/utils.dart';


class BottomDraw extends StatefulWidget{
  _BottomDraw createState() => _BottomDraw();
}

class _BottomDraw extends State<BottomDraw>{
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Container(
      width: ScreenAdapter.width(750),
      height:ScreenAdapter.height(750),
      child: Stack(
        children: <Widget>[
          Positioned(
            width: ScreenAdapter.width(750),
            height: ScreenAdapter.height(80),
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red
              ),
              alignment: Alignment.center,
              child: Text('确定',style: TextStyle(
                color: Colors.white,
                fontSize: ScreenAdapter.fontSize(32),
                fontFamily: '微软雅黑'
              )),
            )
          )
        ],
      )
    ) ;
  }
}