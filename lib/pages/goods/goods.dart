/*
 * @Author: dezhi
 * @Date: 2021-01-18
 * @LastEditTime: 2021-01-20
 * @Description:商品类别
 */

import 'package:flutter/material.dart';
import './goodsItem.dart';


class Goods extends StatefulWidget{
  final Map arguments;
  Goods({this.arguments});
  _Goods createState() => _Goods(this.arguments);
}

class _Goods extends State<Goods>{
  final Map arguments;
  _Goods(this.arguments);
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
  _HomeContent createState() =>  _HomeContent();
}

class _HomeContent extends State<HomeContent>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        GoodsItem(),
      ],
    );
  }
}
