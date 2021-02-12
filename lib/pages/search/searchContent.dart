

import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class SearchContent extends StatefulWidget{
  _SearchContent createState() => _SearchContent();
}

class _SearchContent extends State<SearchContent>{
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(ScreenAdapter.width(30)),
      width: ScreenAdapter.width(750),
      height: ScreenAdapter.height(1334),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('搜索历史',style: TextStyle(
            fontFamily: '微软雅黑',
            fontSize: ScreenAdapter.fontSize(32),
          )),
          Wrap(
            children: <Widget>[
              Chip(
                label: Text('hello')
              )
            ],
          ),
          Row(
            children:<Widget>[
              Text("热门搜索",style: TextStyle(
                fontFamily: '微软雅黑',
                fontSize: ScreenAdapter.fontSize(32)
              )),
            ]
          )
          // Text('搜它')
        ],
      ),
    );
  }
}