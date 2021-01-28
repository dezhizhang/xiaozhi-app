import 'dart:ui';
import 'package:flutter/material.dart';
import '../../utils/utils.dart';
import './categoryItem.dart';

class CategoryWidget extends StatefulWidget {
  _CategoryWidget createState() => _CategoryWidget();
}

class _CategoryWidget extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Container(
      padding: EdgeInsets.only(
        top: ScreenAdapter.height(20),
        bottom: ScreenAdapter.height(20)
      ),
      margin: EdgeInsets.only(
        left:ScreenAdapter.width(20),
        right: ScreenAdapter.width(20)
      ),
      width: ScreenAdapter.width(690),
      height: ScreenAdapter.height(165),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: <Widget>[
          CategoryItem(
            title: '女装',
            url:'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1159937822,203922547&fm=26&gp=0.jpg',
            routeName: '/sale',
          ),
          CategoryItem(
            title: '男装',
            url: 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=315398933,2898163426&fm=26&gp=0.jpg',
          ),
          CategoryItem(
            title: '套装',
            url: 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1044359778,2662188731&fm=26&gp=0.jpg',
          ),
          CategoryItem(
            title: '更多',
            url: 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1243905855,2036993032&fm=26&gp=0.jpg'
          ),
        ],
      ),
    );
  }
}




