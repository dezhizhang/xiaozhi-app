import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class ClearBtn extends StatefulWidget {
  _ClearBtn createState() => _ClearBtn();
}

class _ClearBtn extends State<ClearBtn> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        width: ScreenAdapter.width(750),
        height: ScreenAdapter.height(60),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border.all(
          width: 1,
          color: Colors.red,
        )),
        child: Text("删除搜索历史")
      );
  }
}
