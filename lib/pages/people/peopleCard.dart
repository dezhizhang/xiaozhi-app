/*
 * @Author: dezhizhang
 * @Date: 2021-01-02 16:18:22
 * @Description: 卡片
 */

import 'package:flutter/material.dart';
import '../../utils/utils.dart';
import './cardItem.dart';

class PeopleCard extends StatefulWidget {
  _PeopleCard createState() => _PeopleCard();
}

class _PeopleCard extends State<PeopleCard> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    // TODO: implement build
    return Positioned(
        top: ScreenAdapter.height(160),
        left: ScreenAdapter.width(40),
        child: Container(
          padding: EdgeInsets.only(
            left:ScreenAdapter.width(20),
            top:ScreenAdapter.height(40),
            right:ScreenAdapter.width(20),
            bottom:ScreenAdapter.height(40)
          ),
          width: ScreenAdapter.width(670),
          height: ScreenAdapter.height(302),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(ScreenAdapter.width(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.black54,
                offset: Offset(2.0, 2.0),
                blurRadius: 4.0)
          ]),
          child: Column(
            children: <Widget>[
              //top
              Container(
                width:ScreenAdapter.width(690),
                height: ScreenAdapter.height(110),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      style: BorderStyle.solid,
                      color: Color.fromRGBO(217,220,238,1)
                    )
                  )
                ),
                child: Flex(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    CardItem(),
                    CardItem(),
                    CardItem(),
                    CardItem(),
                  ],
                ),
              ),
              //bottom
              Container(
                width:ScreenAdapter.width(690),
                height: ScreenAdapter.height(110),
                // color: Colors.red,
                child: Flex(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(top:ScreenAdapter.height(28)),
                        alignment: Alignment.center,
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.cached),
                            Text('我的问答')
                          ],
                        ),
                      )
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(top:ScreenAdapter.height(28)),
                        alignment: Alignment.center,
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.cached),
                            Text('我的问答')
                          ],
                        ),
                      )
                    )
                  ],
                ),
              )
            ],
          ),
      ));
  }
}




