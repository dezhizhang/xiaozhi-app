import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwierPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('轮播图组件'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatefulWidget{
  @override
 _HomeContent createState() => _HomeContent();
}

class _HomeContent extends State<HomeContent>{
  List<Map> list = [
    {
      "url":"http://tugua.oss-cn-hangzhou.aliyuncs.com/16006152692596188.jpeg"
    },
    {
      "url":"http://tugua.oss-cn-hangzhou.aliyuncs.com/16007371732208143.jpeg"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Swiper(
          itemBuilder: (BuildContext context,int index) {
            return Image.network(list[index]['url'],fit: BoxFit.cover);
          },
          itemCount: list.length,
          pagination: SwiperPagination(),
          autoplay: true,
        ),
       
      ),
    );
  }
}