import 'dart:ui';

import 'package:flutter/material.dart';
import './productItem.dart';
import './productTabBar.dart';
import '../../utils/utils.dart';
class Product extends StatefulWidget{
  
  Map arguments;
  Product({Key key,this.arguments}):super(key:key);
  _Product createState() => _Product();
}

class _Product extends State<Product>{
  List<Map> list = [
    {"title":"综合","index":0},
    {"title": "销量","index":1},
    {"title":"价格","index":2},
    {"title":"筛选","index":3},
  ];
  int activeIndex = 0;
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        title: Text('商品列表'),
        actions: <Widget>[
          Text("") 
        ],
      ),
      endDrawer: Drawer(
        child: Container(
          child:Text("hello")
        ),
      ),
      
      body:Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(ScreenAdapter.width(10)),
          margin: EdgeInsets.only(top:ScreenAdapter.height(80)),
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context,index){
              return ProductItem();
            },
          ),
        ),
        Positioned(
          width: ScreenAdapter.width(750),
          height: ScreenAdapter.height(80),
          child: Container(
            color:Colors.white,
            child:Flex(
              direction: Axis.horizontal,
              children: this.list.map((item) => 
                ProductTabBar(
                  title:item['title'],
                  index:item["index"],
                 
                  changeColorCallBack:(index){
                    if(index == 3) {
                      _globalKey.currentState.openEndDrawer();
                      print('HELLO');
                    }
                  }
                )
              ).toList(),
            ),
          ),
        ),
      ],
    ),
    );
  }
}

