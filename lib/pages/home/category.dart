import 'dart:ui';
import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class CategoryWidget extends StatefulWidget {
  _CategoryWidget createState() => _CategoryWidget();
}

class _CategoryWidget extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Container(
        padding: EdgeInsets.only(
            left: ScreenAdapter.width(10), right: ScreenAdapter.width(10)),
        width: ScreenAdapter.width(750),
        height: ScreenAdapter.height(330),
        child: Container(
          width: ScreenAdapter.width(730),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          height: ScreenAdapter.height(330),
          child: Column(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.only(
                      left: ScreenAdapter.width(50),
                      top: ScreenAdapter.height(20),
                      right: ScreenAdapter.width(20),
                      bottom: ScreenAdapter.height(20)),
                  width: ScreenAdapter.width(730),
                  height: ScreenAdapter.height(165),
                  child: Row(
                    children: <Widget>[
                      CategoryItem(),
                      CategoryItem(),
                      CategoryItem(),
                      CategoryItem(),
                    ],
                  )),
               Container(
                  padding: EdgeInsets.only(
                      left: ScreenAdapter.width(50),
                      top: ScreenAdapter.height(20),
                      right: ScreenAdapter.width(20),
                      bottom: ScreenAdapter.height(20)),
                  width: ScreenAdapter.width(730),
                  height: ScreenAdapter.height(165),
                  child: Row(
                    children: <Widget>[
                      CategoryItem(),
                      CategoryItem(),
                      CategoryItem(),
                      CategoryItem(),
                    ],
                  ))
            ],
          ),
        ));
  }
}

class CategoryItem extends StatefulWidget {
  _CategoryItem createState() => _CategoryItem();
}

class _CategoryItem extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    // TODO: implement build
    return Container(
      width: ScreenAdapter.width(110),
      margin: EdgeInsets.only(right:ScreenAdapter.width(48)),
      child: Column(
        children: <Widget>[
          Container(
            width: ScreenAdapter.width(110),
            height: ScreenAdapter.height(90),
            margin: EdgeInsets.only(bottom: ScreenAdapter.height(2), ),
            decoration: BoxDecoration(
                color: Colors.yellow,
                image: DecorationImage(
                    image: NetworkImage(
                        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1608488282889&di=a6bf8af5bcd7d57e10d5b73011c8c1ba&imgtype=0&src=http%3A%2F%2Fimg.jingbao321.com%2Ftang%2Fbbf5f23f0bf16ede8905d79da9789049-2.jpg'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(50)),
          ),
          Text('女装',
              style: TextStyle(
                  color: Color.fromRGBO(102, 102, 102, 1),
                  fontSize: ScreenAdapter.fontSize(28),
                  fontFamily: '微软雅黑'))
        ],
      ),
    );
  }
}
