

import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class DetailItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    // TODO: implement build
    return Container(
      color: Colors.white,
      width: ScreenAdapter.width(750),
      child: Text('hello'),
    );
  }
}