import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class CouponsTop extends StatefulWidget {
  _CouponsTop createState() => _CouponsTop();
}

class _CouponsTop extends State<CouponsTop> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      // height: ScreenAdapter.height(100),
      child: Container(
        padding: EdgeInsets.only(
            left: ScreenAdapter.width(30), right: ScreenAdapter.width(30)),
        alignment: Alignment.center,
        color: Colors.white,
        width: ScreenAdapter.height(750),
        height: ScreenAdapter.height(100),
        child: Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Text('合部'),
            ),
            Expanded(
              flex: 1,
              child: Text('已使用'),
            ),
            Expanded(
              flex: 1,
              child: Text('已失效'),
            ),
            Expanded(
              flex: 1,
              child: Text('其它'),
            )
          ],
        ),
      ),
    );
  }
}
