/**
 * @author:zhangdezhi
 * @date:2020-10-23
 * @desc:轮播图组件
*/
import 'dart:ui';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../../services/service.dart';
import '../../model/focus.dart';

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
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getFousData();
  }
  getFousData() async{
    var list = await Service().getFocuInfo();
    var focus = FocusModel.formJson(json.decode(list.data));
    

    print('+++');
    print(focus);
    print('++++');
  }
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