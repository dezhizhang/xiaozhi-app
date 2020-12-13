/*
 * @Author: your name
 * @Date: 2020-12-13 17:37:01
 * @LastEditTime: 2020-12-13 17:41:25
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: /xiaozhi/lib/pages/cart/rightBtn.dart
 */


import 'package:flutter/cupertino.dart';
import '../../utils/utils.dart';

class RightBtn extends StatefulWidget{
  _RightBtn createState() => _RightBtn();
}

class _RightBtn extends State<RightBtn>{
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    // TODO: implement build
    return Container(
      alignment: Alignment.center,
      width: ScreenAdapter.width(45),
      height: ScreenAdapter.height(45),
      child: Text('+'),
    );
  }
}
