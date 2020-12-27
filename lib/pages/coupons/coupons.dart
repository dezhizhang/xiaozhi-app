
import 'dart:ui';

import 'package:flutter/material.dart';
import '../../utils/utils.dart';
import './couponsTop.dart';
class Coupons extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: Text('优惠券'),
      ),
      body: Content(),
    );
  }
}

class Content extends StatefulWidget{
  _Content createState() => _Content();
}

class _Content extends State<Content>{
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    // TODO: implement build
    return Container(
      color: Color.fromRGBO(238,238,238,1),
      width: ScreenAdapter.width(750),
      height: ScreenAdapter.height(1334),
      child: Stack(
        children: <Widget>[
          CouponsTop(),
          Container(
          
            margin: EdgeInsets.only(top:ScreenAdapter.height(110)),
            padding: EdgeInsets.only(left:ScreenAdapter.width(30),right: ScreenAdapter.width(30)),
            child: ListView(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(10)
                  ),
                
                  height: ScreenAdapter.height(160),
                  child: Flex(
                    direction: Axis.horizontal,
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Container(
                         
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            border:Border(
                              right: BorderSide(
                                width: 1,
                                color: Colors.white,

                              )
                            )
                          ),
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('￥',style: TextStyle(
                                color: Colors.white
                              )),
                              Text('5',style: TextStyle(
                                fontSize: 32,
                                color: Colors.white,
                                fontFamily: '微软雅黑'
                              )),
                            ],

                          ),
                        ),
                      ),
                      Expanded(
                        flex: 6,
                        child: Container(
                          alignment: Alignment.center,
                          child: Text('hello'),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          )
        ],
      ),
    );
  }
}