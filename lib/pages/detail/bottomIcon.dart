/*
 * @Author: dezhi
 * @Date: 2021-02-18
 * @LastEditTime: 2021-01-18
 * @Description:详情底部icon
 */
import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class BottomIcon extends StatelessWidget {
  final IconData icon;
  final String title;
  BottomIcon({Key key,this.icon,this.title});
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top:ScreenAdapter.height(4)),
      width: ScreenAdapter.width(100),
      child: Column(
        children: <Widget>[
          Icon(this.icon),
          Text(this.title)
        ],
      ),
    );
  }
}
