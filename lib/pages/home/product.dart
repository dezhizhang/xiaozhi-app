/*
 * @author:zhangdezhi
 * @date:2020-10-25
 * @desc:商品列表
*/
import 'dart:ui';

import 'package:flutter/material.dart';
import '../../utils/utils.dart';


class ProductWidget extends StatefulWidget{
  _ProductWidget createState()=> _ProductWidget();
}

class _ProductWidget extends State<ProductWidget>{
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(ScreenAdapter.height(10)),
      child: Wrap(
        runSpacing: 10,
        spacing: 10,
        children: <Widget>[
          ProductItem(),
          ProductItem(),
          ProductItem(),
          ProductItem(),
        ],
      ),
    );
  }
}

class ProductItem extends StatefulWidget{
  _ProductItem createState() =>_ProductItem();
}

class _ProductItem extends State<ProductItem>{
  
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Container(
      width: (ScreenAdapter.screenWidth() - ScreenAdapter.height(60)) / 2,
      padding: EdgeInsets.all(ScreenAdapter.height(10)),
      decoration: BoxDecoration(
        border: Border.all(
          color:Color.fromRGBO(233, 233, 233, 0.9),
          width:ScreenAdapter.width(1),
        ),
        color: Colors.white
      ),
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            // height: ScreenAdapter.height(360),
            child: AspectRatio(
              aspectRatio: 1/1,
              child:Image.network(
              'http://tugua.oss-cn-hangzhou.aliyuncs.com/16005339644607674.jpeg',
              fit: BoxFit.cover,
              ),
            )
          ),
          Padding(
            padding: EdgeInsets.only(top:ScreenAdapter.height(10)),
            child: Text(
              '大皮衣大皮衣大皮衣大皮衣大皮衣大皮衣大皮衣大皮衣大皮衣大皮衣大皮衣大皮衣',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.black54),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top:ScreenAdapter.height(10)),
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left:ScreenAdapter.width(20)),
                    child: Text(
                      '￥1111',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                      ),
                    ),
                  )
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right:ScreenAdapter.width(20)),
                    child: Text(
                      '￥1888',
                      style: TextStyle(
                        color: Colors.black54,
                        decoration: TextDecoration.lineThrough
                      ),
                    ),
                  ),
                  // child: Text('187'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}