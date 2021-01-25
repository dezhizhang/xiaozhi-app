
import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class CardItem extends StatefulWidget {
  String title;
  String router;
  String number;
  CardItem({Key key,this.title,this.number,this.router}):super(key: key);
  @override
  _CardItem createState() => _CardItem(this.title,this.number,this.router);
}

class _CardItem extends State<CardItem> {
  String router;
  String title;
  String number;
  _CardItem(this.title,this.number,this.router);
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Expanded(
        flex: 1,
        child: Container(
          alignment: Alignment.center,
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, this.router);
            },
            child:  Column(
            children: <Widget>[
              Text(this.title,
                  style: TextStyle(
                      color: Color.fromRGBO(77, 77, 77, 0.9),
                      fontSize: ScreenAdapter.fontSize(24),
                      fontFamily: '微软雅黑',
                      fontWeight: FontWeight.bold)),
              Text(this.number,
                  style: TextStyle(
                    color: Color.fromRGBO(77, 77, 77, 0.9),
                    fontSize: ScreenAdapter.fontSize(36),
                    fontFamily: '微软雅黑',
                  ))
            ],
          ),
          ),
        ));
  }
}
