
import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class CardItem extends StatefulWidget {
  @override
  _CardItem createState() => _CardItem();
}

class _CardItem extends State<CardItem> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Expanded(
        flex: 1,
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Text('待支付',
                  style: TextStyle(
                      color: Color.fromRGBO(77, 77, 77, 0.9),
                      fontSize: ScreenAdapter.fontSize(24),
                      fontFamily: '微软雅黑',
                      fontWeight: FontWeight.bold)),
              Text('3',
                  style: TextStyle(
                    color: Color.fromRGBO(77, 77, 77, 0.9),
                    fontSize: ScreenAdapter.fontSize(36),
                    fontFamily: '微软雅黑',
                  ))
            ],
          ),
        ));
  }
}
