/*
 * @Author: dezhizhang
 * @Date: 2020-12-21 18:29:00
 * @LastEditTime: 2020-12-21 20:30:13
 * @LastEditors: Please set LastEditors
 * @Description: tabs页面
 */

import 'package:flutter/material.dart';
import '../../utils/utils.dart';




class TabsItem extends StatefulWidget{
  String title;
  TabsItem({Key key,this.title}):super(key:key);
  _TabsItem createState() => _TabsItem(this.title);
}

class _TabsItem extends State<TabsItem>   {
  String title;
  _TabsItem(this.title);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Container(
      margin: EdgeInsets.only(left:ScreenAdapter.width(30)),
      width: ScreenAdapter.width(84),
      child: Text(this.title),
    );
  }
}

