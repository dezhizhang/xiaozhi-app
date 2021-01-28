

import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class Content extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(
        bottom:ScreenAdapter.height(20)
      ),
      width: ScreenAdapter.width(750),
      height: ScreenAdapter.height(240),
      color: Colors.white,
      child:Column(
        children: <Widget>[
          Text('贵彩办公')
        ],
      ) ,
    );
  }
}