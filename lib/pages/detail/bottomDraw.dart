

import 'package:flutter/material.dart';
import '../../utils/utils.dart';


class BottomDraw extends StatefulWidget{
  _BottomDraw createState() => _BottomDraw();
}

class _BottomDraw extends State<BottomDraw>{
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Container(
      width: ScreenAdapter.width(750),
      height:ScreenAdapter.height(750),
      child: Text("hello"),
    ) ;
  }
}