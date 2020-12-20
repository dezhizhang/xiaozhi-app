import 'dart:ui';

import 'package:flutter/material.dart';
import '../../utils/utils.dart';


class CategoryWidget extends StatefulWidget{
  _CategoryWidget createState()=> _CategoryWidget();
}

class _CategoryWidget extends State<CategoryWidget>{
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Container(
      width: double.infinity,
      height: ScreenAdapter.height(300),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:BorderRadius.circular(10)
      ),
      child: GridView.count(
        crossAxisCount: 5,
        childAspectRatio: 1.0/1.3,
        children: <Widget>[
          CategoryIcon(),
          CategoryIcon(),
          CategoryIcon(),
          CategoryIcon(),
          CategoryIcon(),
          CategoryIcon(),
          CategoryIcon(),
          CategoryIcon(),
          CategoryIcon(),
          CategoryIcon(),
        ],
      ),
    );
  }
}

class CategoryIcon extends StatefulWidget{
  _CategoryIcon createState() =>_CategoryIcon();
}

class _CategoryIcon extends State<CategoryIcon>{
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return  Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        color: Colors.red,
        width: (ScreenAdapter.screenWidth() / 4) - 20,
        child: Column(
          children: <Widget>[
            Container(
              // height: ScreenAdapter.height(60),
              child: Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1608488282889&di=a6bf8af5bcd7d57e10d5b73011c8c1ba&imgtype=0&src=http%3A%2F%2Fimg.jingbao321.com%2Ftang%2Fbbf5f23f0bf16ede8905d79da9789049-2.jpg',fit: BoxFit.cover),
            ),
            Text('hello')
          ],
        ),
      ),
    );
  }
}
