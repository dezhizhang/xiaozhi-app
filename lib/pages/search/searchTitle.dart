import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class SearchTitle extends StatelessWidget{
  String title;
  SearchTitle({Key key,this.title}):super(key: key);
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    // TODO: implement build
    return Text(this.title,style: TextStyle(
      fontFamily: '微软软雅黑',
      fontSize: ScreenAdapter.fontSize(32),
    ));
  }
}