import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class IntegralBody extends StatefulWidget {
  _IntegralBody createState() => _IntegralBody();
}

class _IntegralBody extends State<IntegralBody> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(ScreenAdapter.width(30)),
      margin: EdgeInsets.only(bottom: ScreenAdapter.height(30)),
      color: Colors.white,
      width: ScreenAdapter.width(690),
      height: ScreenAdapter.height(240),
      child: Column(
        children: <Widget>[
          Container(
            width: ScreenAdapter.width(690),
            margin: EdgeInsets.only(bottom:ScreenAdapter.height(10)),
            child: Row(
              children:<Widget>[
                Text('已连续签到',style: TextStyle(
                  color: Color.fromRGBO(51,51,51,1),
                  fontSize: ScreenAdapter.fontSize(32),
                  fontFamily: '微软雅黑'
                )),
                SizedBox(width:4),
                Text('4 天',style: TextStyle(
                  color: Color.fromRGBO(255,82,80,1),
                  fontFamily: '微软雅黑',
                  fontSize: ScreenAdapter.fontSize(32)
                ))
              ]
            ),
          ),
          Container(
            width: ScreenAdapter.width(690),
            margin: EdgeInsets.only(bottom:ScreenAdapter.height(30)),
            child: Text('明日签到可获得',style: TextStyle(
              fontSize: ScreenAdapter.fontSize(20),
              color: Color.fromRGBO(153,153,153,1),
              fontFamily: '微软雅黑'
            )),
          ),
          Container(
            width: ScreenAdapter.width(690),
            child: Flex(
              direction: Axis.horizontal,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Icon(Icons.cloud_circle_sharp)
                ),
                Expanded(
                  flex: 1,
                  child: Icon(Icons.cloud_circle_sharp)
                ),
                Expanded(
                  flex: 1,
                  child: Icon(Icons.cloud_circle_sharp)
                ),
                Expanded(
                  flex: 1,
                  child: Icon(Icons.cloud_circle_sharp)
                ),
                Expanded(
                  flex: 1,
                  child: Icon(Icons.cloud_circle_sharp)
                ),
                Expanded(
                  flex: 1,
                  child: Icon(Icons.cloud_circle_sharp)
                ),
                Expanded(
                  flex: 1,
                  child: Icon(Icons.cloud_circle_sharp)
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

