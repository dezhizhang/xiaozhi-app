/*
 * @Author: dezhizhang
 * @Date: 2020-12-13 18:29:00
 * @LastEditTime: 2020-12-13 20:30:13
 * @LastEditors: Please set LastEditors
 * @Description: 订单页面
 * @FilePath: /xiaozhi/lib/pages/order/order.dart
 */


import 'dart:ui';

import 'package:flutter/material.dart';
import '../../utils/utils.dart';
import './tabsItem.dart';

class Order extends StatefulWidget{
  _Order createState() => _Order();
}

class _Order extends State<Order>{
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('我的订单'),
      ),
      body:OrderContent()
    );
  }
}

class OrderContent extends StatefulWidget{
  _OrderContent createState() => _OrderContent();
}


class _OrderContent extends State<OrderContent>{

  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Container(
      color: Color.fromRGBO(238,238,238,1),
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top:ScreenAdapter.height(90)),
            child: ListView(
              children: <Widget>[
                Container(
                  margin:EdgeInsets.only(bottom:ScreenAdapter.height(10)),
                  color: Colors.white,
                  width: ScreenAdapter.width(750),
                  height: ScreenAdapter.height(448),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(ScreenAdapter.width(30)),
                        child: Flex(
                          direction: Axis.horizontal,
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: Text('情侣衬衫'),
                            ),
                            Text('交易成功'),
                            SizedBox(width:ScreenAdapter.width(20)),
                            Icon(Icons.backspace)
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(ScreenAdapter.width(30)),
                        height: ScreenAdapter.height(198),
                        color:Color.fromRGBO(238,238,238,1),
                        child: Flex(
                          direction: Axis.horizontal,
                          children: <Widget>[
                            Container(
                              width: ScreenAdapter.width(150),
                              height: ScreenAdapter.height(150),
                              child: Image.network('http://tugua.oss-cn-hangzhou.aliyuncs.com/16006152126699263.jpeg',fit: BoxFit.cover),
                            ),
                            Expanded(
                            
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.only(left:ScreenAdapter.width(32)),
                                child: Text('hello'),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                    //内容
                    //描述
                    //底部
                  ),
                )
              ],
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child:Container(
              width: ScreenAdapter.width(750),
              margin: EdgeInsets.only(bottom:ScreenAdapter.height(90)),
              color: Colors.white,
              height: ScreenAdapter.height(80),
              child: Row(
                children: <Widget>[
                  TabsItem(title: '全部'),
                  TabsItem(title: '待发货'),
                  TabsItem(title: '已发货'),
                  TabsItem(title: '已签收'),
                  TabsItem(title: '已退货'),
                  TabsItem(title: '拼团中'),
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}


