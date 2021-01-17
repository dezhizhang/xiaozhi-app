/*
 * @author:zhangdezhi
 * @date:2020-10-25
 * @desc:热销商品
*/
import 'package:flutter/material.dart';
import '../../utils/utils.dart';


class HotProduct extends StatefulWidget{
  _HotProduct createState()=> _HotProduct();
}

class _HotProduct extends State<HotProduct>{
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    // TODO: implement build
    return Container(
      padding: EdgeInsets.only(
        left:ScreenAdapter.width(10),
        right: ScreenAdapter.width(10),
      ),
      width:ScreenAdapter.width(690),
      height:ScreenAdapter.height(370),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
    );
  }
}