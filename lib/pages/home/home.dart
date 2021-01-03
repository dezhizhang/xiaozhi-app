/*
 * @author:zhangdezhi
 * @date:2020-10-25
 * @desc:首页列表
*/
import 'dart:ui';

import 'package:flutter/material.dart';
import './category.dart';
import './product.dart';
import './search.dart';
import './swiper.dart';
import '../../utils/utils.dart';



class Home extends StatefulWidget{
  _Home createState() => _Home();
}

class _Home extends State<Home> with AutomaticKeepAliveClientMixin{
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return  Padding(
      padding: EdgeInsets.all(ScreenAdapter.height(10)),
      child:Container(
        color: Color.fromRGBO(238, 238, 238, 1),
        child:  ListView(
        children: <Widget>[
          Search(),
          SwiperWidget(), //轮播图
          SizedBox(height:ScreenAdapter.height(10)),
          CategoryWidget(),
          SizedBox(height:ScreenAdapter.height(10)),
          Container(
            color: Colors.white,
            height: 40,
            alignment: Alignment.center,
            width: double.infinity,
            child: Text('主打产品'),
          ),
          ProductWidget(),
        ],
      ),
      )
    );
  }
}