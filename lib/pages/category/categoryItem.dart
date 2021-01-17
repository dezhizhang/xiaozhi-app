

import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class CategoryItem extends StatefulWidget{
  _CategoryItem createState() => _CategoryItem();
}

class _CategoryItem extends State<CategoryItem>{
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Container(
      padding: EdgeInsets.all(ScreenAdapter.width(20)),
      margin: EdgeInsets.only(bottom:ScreenAdapter.height(20)),
      width: ScreenAdapter.width(530),
      height:ScreenAdapter.height(200),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color:Color.fromRGBO(190, 192, 194, 0.4),
            offset: Offset(2.0,2.0),
          )
        ]
      ),
      child: Row(
        children: <Widget>[
          Container(
            color: Colors.red,
            width:ScreenAdapter.width(140),
            height:ScreenAdapter.height(140),
          ),
          Container(
            margin: EdgeInsets.only(left:ScreenAdapter.width(20)),
            child: Text('hello'),
          )
        ],
      ),
    );
  }
}
