

import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class Information extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('个人资料'),
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
      color:Color.fromRGBO(238,238,238,1),
      width: ScreenAdapter.width(750),
      height: ScreenAdapter.height(1334),
      child: Stack(
        children: <Widget>[
          Container(
            width: ScreenAdapter.width(750),
            height: ScreenAdapter.height(120),
            color: Colors.pink,
            child: Text('hello'),
          ),
          Positioned(
            top: 20,
            left: 20,
            right: 20,
            child: Container(
              height: ScreenAdapter.height(1000),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              padding: EdgeInsets.only(left:ScreenAdapter.width(20),right: ScreenAdapter.width(20)),
              child: Text('HELLO'),
            ),
          )
        ],
      ),
    );
  }
}