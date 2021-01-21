

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
      
      height:ScreenAdapter.height(260),
      child: Container(
        child: Swiper(
          itemBuilder: (BuildContext context,index) {
            return Row(
              children: <Widget>[
                HotProduct(),
                HotProduct(),
                HotProduct(),
              ],
            );
          },
          itemCount: 1,
        ),
      ),
    ) ;
  }
}

class HotProduct extends StatefulWidget{
  _HotProduct createState() => _HotProduct();
}

class _HotProduct extends State<HotProduct>{
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Container(
      margin: EdgeInsets.only(left:ScreenAdapter.width(24)),
      width: ScreenAdapter.width(204),
      height: ScreenAdapter.height(270),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom:ScreenAdapter.height(6)),
            width:ScreenAdapter.width(204),
            height: ScreenAdapter.height(180),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                image: NetworkImage('http://tugua.oss-cn-hangzhou.aliyuncs.com/16006150123505715.jpeg'),
                fit: BoxFit.cover
              )
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom:ScreenAdapter.height(6)),
            child: Text('潮流碎花连衣裙',style: TextStyle(
              color: Color.fromRGBO(51,51,51,1),
              fontFamily: '微软雅黑'
            )),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget>[
                Text('￥89',style: TextStyle(
                  color: Color.fromRGBO(246,58,0,1)
                )),
                Icon(Icons.card_travel,color: Color.fromRGBO(246,58,0,1)) 
              ]
            ),
          )
        ],
      ),
    );
  }
}

