

import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class Search extends StatefulWidget{
  _Search createState() => _Search();
}

class _Search extends State<Search>{
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    // TODO: implement build
    return Container(
      width:ScreenAdapter.width(750),
      height:ScreenAdapter.height(100),
      color: Colors.white,
      padding:  EdgeInsets.only(
        left:ScreenAdapter.width(30),
        top:ScreenAdapter.height(20),
        right:ScreenAdapter.width(30),
        bottom:ScreenAdapter.height(20)
      ),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/serch');
        },
        child:Container(
        padding: EdgeInsets.only(
          left:ScreenAdapter.width(20),
          right:ScreenAdapter.width(20)
        ),
        width:ScreenAdapter.width(690),
        height:ScreenAdapter.height(60),
        decoration: BoxDecoration(
          color: Color.fromRGBO(230,227,227,1),
          borderRadius: BorderRadius.circular(30)
        ),
        child: Row(
          children: <Widget>[
            Icon(Icons.search,color: Color.fromRGBO(255,82,80,1)),
            Text('搜索商品名称或类型',style: TextStyle(
              color: Color.fromRGBO(153,153,153,1),
              fontFamily: '微软雅黑',
              fontSize: ScreenAdapter.fontSize(28)
            ))
          ],
        ),
      ),
      )
    );
  }
}