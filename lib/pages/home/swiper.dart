/**
 * @author:zhangdezhi
 * @date:2020-10-23
 * @desc:轮播图组件
*/
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperCompt extends StatefulWidget{
  _SwiperCompt createState()=> _SwiperCompt();
}

class _SwiperCompt extends State<SwiperCompt>{
  List list = [
    {
      'url':'http://tugua.oss-cn-hangzhou.aliyuncs.com/16007371732208143.jpeg',
    },
    {
      'url':'http://tugua.oss-cn-hangzhou.aliyuncs.com/16007371921474207.jpeg'
    }
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: AspectRatio(
        aspectRatio: 2 / 1,
        child: Swiper(
          itemBuilder: (BuildContext context,index) {
            return Image.network(
              this.list[index]['url'],
              fit: BoxFit.cover,
            );
          },
          itemCount: this.list.length,
          autoplay: true,
          pagination: SwiperPagination(),
          // controller: ,
        ),
      ),
    );
  }
}