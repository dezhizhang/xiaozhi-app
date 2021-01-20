

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../../utils/utils.dart';

class HotItem extends StatefulWidget{
  _HotItem createState() => _HotItem();
}

class _HotItem extends State<HotItem>{
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Container(
      padding: EdgeInsets.only(
        left:ScreenAdapter.width(30),
        right:ScreenAdapter.width(30)
      ),
      height:ScreenAdapter.height(260),
      child: Container(
        color: Colors.yellow,
        child: Swiper(
          itemBuilder: (BuildContext context,index) {
            return Image.network(
              'http://tugua.oss-cn-hangzhou.aliyuncs.com/16006150123505715.jpeg',
              fit: BoxFit.cover,
            );
          },
          itemCount: 1,
        ),
      ),
    ) ;
  }
}