/*
 * @Author: dezhi
 * @Date: 2021-01-18
 * @LastEditTime: 2021-01-18
 * @Description:商品详情
 */

import 'package:flutter/material.dart';

class Detal extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('订单详情'),
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