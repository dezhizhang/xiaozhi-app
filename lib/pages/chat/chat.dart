

import 'package:flutter/material.dart';
import '../../utils/utils.dart';


class Chat extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('联系客服'),
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
      width: ScreenAdapter.width(750),
      height: ScreenAdapter.height(1334),
      color:Color.fromRGBO(238,238,238,1),
      child: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Text("hello")
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: ScreenAdapter.width(750),
              height:ScreenAdapter.height(250),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(
                    width: 1,
                    color: Colors.red
                  )
                )
              ),
              child: Text('hello'),
            )
          )
        ],
      ),
    );
  }
}