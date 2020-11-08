/**
 * @author:zhangdezhi
 * @date:2020-10-23
 * @desc:轮播图组件
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
    var response = await Service().getFocuInfo();
    var focus =  FocusModel.fromJson(response.data);
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