

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../../utils/utils.dart';
import '../../model/photo.dart';
import '../../services/service.dart';


class SwiperWidget extends StatefulWidget{
  _SwiperWidget createState() => _SwiperWidget();
}

class _SwiperWidget extends State<SwiperWidget>{
  List list = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getPhoto();
  }
  getPhoto () async{
    var res = await Service().getDetailPhoto({"id":"5fe15aba5108dd04dae4ebca"});
    var photo = PhotoModel.fromJson(res.data);
    if(photo.code == 200) {
      var list = photo.data;
      setState(() {
        this.list = list;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: ScreenAdapter.width(750),
      height: ScreenAdapter.height(750),
      child: Swiper(
        itemBuilder: (BuildContext context,index){
          return Image.network(this.list[index],fit: BoxFit.cover);
        },
        itemCount: this.list.length,
        autoplay: true,
        pagination: SwiperPagination(),
      ),
    );
  }
}

