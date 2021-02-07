import 'dart:ui';

import 'package:flutter/material.dart';
import '../../utils/utils.dart';
import './productItem.dart';
class Product extends StatefulWidget{
  Map arguments;
  Product({Key key,this.arguments}):super(key:key);
  _Product createState() => _Product();
}

class _Product extends State<Product>{
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('商品列表'),
      ),
      body: Padding(
        padding: EdgeInsets.all(ScreenAdapter.width(10)),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context,index) {
            return ProductItem();
          }
        ),
      ),
    );
  }
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text("hello");
  }
}