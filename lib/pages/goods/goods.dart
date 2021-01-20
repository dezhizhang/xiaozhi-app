/*
 * @Author: dezhi
 * @Date: 2021-01-18
 * @LastEditTime: 2021-01-20
 * @Description:商品类别
 */

import 'package:flutter/material.dart';


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
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text('hello');
  }
}