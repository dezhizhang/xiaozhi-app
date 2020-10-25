/*
 * @author:zhangdezhi
 * @date:2020-10-25
 * @desc:首页列表
*/
import 'package:flutter/material.dart';
import 'package:xiaozhi/pages/home/category.dart';
import 'package:xiaozhi/pages/home/swiper.dart';
import '../../utils/utils.dart';



class Home extends StatefulWidget{
  _Home createState() => _Home();
}

class _Home extends State<Home>{
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return  Padding(
      padding: EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          SwiperCompt(),
          SizedBox(height:ScreenAdapter.setHeight(10)),
          CategoryCompt()
        ],
      ),
    );
  }
}