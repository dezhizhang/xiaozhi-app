/*
 * @Author: dezhi
 * @Date: 2021-01-18
 * @LastEditTime: 2021-01-20
 * @Description:商品类别
 */

import 'package:flutter/material.dart';
import '../../utils/utils.dart';
import './goodsItem.dart';


class Goods extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('商品分类'),
      ),
      body: HomeContent(),
    );
  }
}

class HomeContent extends StatefulWidget{
  _HomeContent createState() => _HomeContent();
}

class _HomeContent extends State<HomeContent>{
  List list = [];
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    // TODO: implement build
    return Container(
      width: ScreenAdapter.width(750),
      height: ScreenAdapter.height(1334),
      color: Color.fromRGBO(242,242,242,1),
      child:  ListView(
        children: <Widget>[
           GoodsItem(),
        ],
      ),
    );

  }
}

