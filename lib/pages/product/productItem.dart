import 'dart:ui';

import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class ProductItem extends StatefulWidget{
  _ProductItem createState() => _ProductItem();
}

class _ProductItem extends State<ProductItem>{
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      width: ScreenAdapter.width(180),
                      height: ScreenAdapter.height(180),
                      child: Image.network(
                        'http://tugua.oss-cn-hangzhou.aliyuncs.com/16006152126699263.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: ScreenAdapter.height(180),
                        child: Padding(
                          padding: EdgeInsets.all(ScreenAdapter.width(10)),
                          child: Column(
                            children: <Widget>[
                              Text(
                                '韩雪，1983年1月11日出生于江苏省苏州市姑苏区，中国内地女演员、歌手、影视制作人，毕业于上海戏剧学院表演系。2000年，韩雪参加并获得香港嘉禾影视公司主办的“世纪之星”影视歌新人大赛全国金奖',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: ScreenAdapter.height(20)),
                              Row(
                                
                                children: <Widget>[
                                  Container(
                                    height: ScreenAdapter.height(36),
                                    margin: EdgeInsets.only(right:10),
                                    padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromRGBO(230, 230, 230, 0.9),
                                    ),
                                    child: Text('4G'),
                                  ),
                                   Container(
                                    height: ScreenAdapter.height(36),
                                    margin: EdgeInsets.only(right:10),
                                    padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromRGBO(230, 230, 230, 0.9),
                                    ),
                                    child: Text('128G'),
                                  )
                                ],
                              ),
                              SizedBox(height: ScreenAdapter.height(10)),
                              Row(
                                children: <Widget>[
                                  Text(
                                    '￥190',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 14
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ),
                    )
                  ],
                ),
                Divider(),
              ],
            );
  }
}