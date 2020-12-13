/*
 * @Author: dezhizhang
 * @Date: 2020-10-25 18:04:19
 * @LastEditTime: 2020-12-13 14:45:33
 * @LastEditors: Please set LastEditors
 * @Description: 轮播图组件
 * @FilePath: /xiaozhi/lib/pages/home/swiper.dart
 */
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../../services/service.dart';
import '../../model/focus.dart';

class SwiperWidget extends StatefulWidget{
  _SwiperWidget createState()=> _SwiperWidget();
}

class _SwiperWidget extends State<SwiperWidget>{
  List list = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getFousData();
  }
  getFousData() async{
    var res = await Service().getFocuInfo();
    var focus =  FocusModel.fromJson(res.data);
    if(focus.code == 200) {
      var list = focus.data;
      setState(() {
        this.list=list;
      });
    }
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
              list[index].url,
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