/*
 * @author:zhangdezhi
 * @date:2020-10-25
 * @desc:热销商品
*/
import 'package:flutter/material.dart';
import './hotItem.dart';
import '../../utils/utils.dart';
import '../../services/service.dart';



class HotProduct extends StatefulWidget{
  _HotProduct createState()=> _HotProduct();
}

class _HotProduct extends State<HotProduct>{
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    // TODO: implement build
    return Container(
      padding: EdgeInsets.only(
        top:ScreenAdapter.height(20),
        bottom:ScreenAdapter.height(20)
      ),
      margin: EdgeInsets.only(
        left:ScreenAdapter.width(20),
        right: ScreenAdapter.width(20),
      ),
      width:ScreenAdapter.width(690),
      height:ScreenAdapter.height(370),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                width: ScreenAdapter.width(120),
                height: ScreenAdapter.height(40),
                child: Text('热门产品',style: TextStyle(
                  color: Colors.white,
                  fontSize: ScreenAdapter.fontSize(24),
                  fontFamily: '微软雅黑'
                )),
                decoration: BoxDecoration(
                  gradient:RadialGradient(
                    colors: [Color.fromRGBO(81,123,251,1),Color.fromRGBO(118,92,247,1)],
                    center: Alignment.topLeft,
                  ),
                   borderRadius: BorderRadius.only(
                    topRight:  Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )
                 
                ),
              ),
              Container(
                margin: EdgeInsets.only(right:ScreenAdapter.width(20)),
                child: Text('MORE',style: TextStyle(
                  color: Color.fromRGBO(69,111,251,1)
                )),
              )
            ],
          ),
          SizedBox(height:ScreenAdapter.height(20)),
          HotItem(),
        ],
      ),
    );
  }
}


