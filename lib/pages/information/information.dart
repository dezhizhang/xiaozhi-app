/*
 * :file description: 
 * :name: /xiaozhi/lib/pages/information/information.dart
 * :author: 张德志
 * :copyright: (c) 2021, Tungee
 * :date created: 2021-05-28 17:52:05
 * :last editor: 张德志
 * :date last edited: 2021-06-13 21:33:28
 */
import 'dart:ui';

import 'package:flutter/material.dart';
import '../../utils/utils.dart';
import '../components/itemTabs.dart';

class Information extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('个人资料'),
      ),
      body: Content(),
    );
  }
}

class Content extends StatefulWidget {
  _Content createState() => _Content();
}

class _Content extends State<Content> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    // TODO: implement build
    return Container(
      color: Color.fromRGBO(238, 238, 238, 1),
      width: ScreenAdapter.width(750),
      height: ScreenAdapter.height(1334),
      child: Stack(
        children: <Widget>[
          Container(
            width: ScreenAdapter.width(750),
            height: ScreenAdapter.height(120),
            color: Colors.pink,
            // child: Text('hello'),
          ),
          Positioned(
            top: 20,
            left: 20,
            right: 20,
            child: Container(
              height: ScreenAdapter.height(1000),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              padding: EdgeInsets.only(
                  left: ScreenAdapter.width(30),
                  right: ScreenAdapter.width(30)),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                        top: ScreenAdapter.height(10),
                        bottom: ScreenAdapter.height(40)),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(50)),
                    alignment: Alignment.center,
                    width: ScreenAdapter.width(100),
                    height: ScreenAdapter.height(100),
                    child: Image.network(
                        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1608488282889&di=a6bf8af5bcd7d57e10d5b73011c8c1ba&imgtype=0&src=http%3A%2F%2Fimg.jingbao321.com%2Ftang%2Fbbf5f23f0bf16ede8905d79da9789049-2.jpg',
                        fit: BoxFit.cover),
                  ),
                  ItemTabs(
                    title: "姓名",
                    margin: 0,
                    content: "",
                    isBack: false,
                  ),
                  ItemTabs(title: "生日", margin: 0, content: "", isBack: true),
                  ItemTabs(title: "职业", margin: 0, content: "", isBack: true),
                  ItemTabs(title: "学历", margin: 0, content: "", isBack: true),
                  ItemTabs(title: "地址", margin: 0, content: "", isBack: true),
                  ItemTabs(title: "微信号", margin: 0, content: "", isBack: true),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
