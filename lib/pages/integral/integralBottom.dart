import 'package:flutter/material.dart';
import '../../utils/utils.dart';
import './listItem.dart';

class IntegralBottom extends StatefulWidget {
  _IntegralBottom createState() => _IntegralBottom();
}

class _IntegralBottom extends State<IntegralBottom> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    // TODO: implement build
    return Container(
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      padding: EdgeInsets.all(ScreenAdapter.width(30)),
      width: ScreenAdapter.width(690),
      height: ScreenAdapter.height(570),
      child: Column(
        children: <Widget>[
          //Header
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(bottom: ScreenAdapter.height(20)),
            child: Column(
              children: <Widget>[
                Text('积分任务',
                    style: TextStyle(
                        fontFamily: '微软雅黑',
                        fontSize: ScreenAdapter.fontSize(32),
                        color: Color.fromRGBO(51, 51, 51, 1))),
                Text('做任务赚积分',
                    style: TextStyle(
                        fontSize: ScreenAdapter.fontSize(20),
                        fontFamily: '微软雅黑',
                        color: Color.fromRGBO(153, 153, 153, 1))),
              ],
            ),
          ),
          ListItem(),
          ListItem(),
          ListItem(),
          ListItem(),
        ],
      ),
    );
  }
}
