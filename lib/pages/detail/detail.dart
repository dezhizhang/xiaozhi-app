/*
 * @Author: dezhi
 * @Date: 2021-01-18
 * @LastEditTime: 2021-01-18
 * @Description:商品详情
 */

import 'package:flutter/material.dart';
import './swiper.dart';
import '../../utils/utils.dart';
import './content.dart';
import './detaiItem.dart';

class Detal extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('商品详情'),
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
    ScreenAdapter.init(context);
    // TODO: implement build
    return Container(
      width: ScreenAdapter.width(750),
      height: ScreenAdapter.height(1334),
      color: Color.fromRGBO(238, 238, 238, 1),
      child: ListView(
        children: <Widget>[
          SwiperWidget(),
          Content(),
          DetailItem(),
        ],
      ),
    );
  }
}