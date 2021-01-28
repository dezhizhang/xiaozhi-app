/*
 * @Author: dezhi
 * @Date: 2021-01-18
 * @LastEditTime: 2021-01-20
 * @Description:商品类别
 */

import 'package:flutter/material.dart';

class Goods extends StatefulWidget{
  _Goods createState() => _Goods();
}

class _Goods extends State<Goods>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('商品分类'),
      ),
      body: Text('hello'),
    );
  }
}
