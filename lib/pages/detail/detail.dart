/*
 * @Author: dezhi
 * @Date: 2021-01-18
 * @LastEditTime: 2021-01-18
 * @Description:商品详情
 */

import 'package:flutter/material.dart';
import './swiper.dart';
import '../../utils/utils.dart';
import './content.dart';
import './detaiItem.dart';
import './bottomIcon.dart';

class Detal extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('商品详情'),
      ),
      body: HomeContent(),
    );
  }
}

class HomeContent extends StatefulWidget{
  _HomeContent createState() => _HomeContent();
}

class _HomeContent extends State<HomeContent>{
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    // TODO: implement build
    return Container(
      width: ScreenAdapter.width(750),
      height: ScreenAdapter.height(1334),
      color: Color.fromRGBO(238, 238, 238, 1),
      child: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
               SwiperWidget(),
            ],
          ),
          Positioned(
            
            height: ScreenAdapter.height(80),
            width: ScreenAdapter.width(750),
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(
                    color: Colors.black26,
                    width: 1
                  )
                )
              ),
              child: Row(
                children: <Widget>[
                  BottomIcon(
                    icon: Icons.shopping_cart,
                    title: '店铺'
                  ),
                  BottomIcon(
                    icon: Icons.dashboard_customize,
                    title: '客服'
                  ),
                  BottomIcon(
                    icon: Icons.shopping_cart,
                    title: '购物车'
                  ),
                 Container(
                   margin: EdgeInsets.only(left:ScreenAdapter.width(20)),
                    height: ScreenAdapter.height(66),
                    width: ScreenAdapter.width(200),
                    alignment: Alignment.center,
                    child: Text('加入购物车',style: TextStyle(
                      color: Colors.white
                    )),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30)
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left:ScreenAdapter.width(20)),
                    height: ScreenAdapter.height(66),
                    width:ScreenAdapter.width(200),
                    alignment: Alignment.center,
                    child: Text("立即购买",style: TextStyle(
                      color: Colors.white,
                    ),),
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(30)
                    ),
                  )
                ],
              ),
            )
            
          )
          // Positioned(
          //   child: 
          // ),
        ],
      ),
      // child: ListView(
      //   children: <Widget>[
      //     SwiperWidget(),
      //     Content(),
      //     DetailItem(),
      //   ],
      // ),
    );
  }
}