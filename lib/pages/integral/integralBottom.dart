import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class IntegralBottom extends StatefulWidget {
  _IntegralBottom createState() => _IntegralBottom();
}

class _IntegralBottom extends State<IntegralBottom> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    // TODO: implement build
    return Container(
      color: Colors.white,
      width: ScreenAdapter.width(690),
      height: ScreenAdapter.height(570),
      child: Text('hello'),
    );
  }
}
