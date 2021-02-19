

import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class Content extends StatefulWidget{
  _Content createState() => _Content();
}

class _Content extends State<Content>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(
        bottom:ScreenAdapter.height(20)
      ),
      width: ScreenAdapter.width(750),
      height: ScreenAdapter.height(240),
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child: InkWell(
        // onTap: () {
        //   _attrBottomSheet();
        // },
       child:Text('hello')
      ),
    );
  }
}