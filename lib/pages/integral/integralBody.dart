import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class IntegralBody extends StatefulWidget {
  _IntegralBody createState() => _IntegralBody();
}

class _IntegralBody extends State<IntegralBody> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(bottom: ScreenAdapter.height(30)),
      color: Colors.white,
      width: ScreenAdapter.width(690),
      height: ScreenAdapter.height(240),
      child: Text('hello'),
    );
  }
}
