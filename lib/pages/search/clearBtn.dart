import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class ClearBtn extends StatefulWidget {
  _ClearBtn createState() => _ClearBtn();
}

class _ClearBtn extends State<ClearBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenAdapter.width(750),
      height: ScreenAdapter.height(60),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(
          width:1,
          color:Color.fromRGBO(204,204,204,1)
        )
      ),
      child: Text('删除搜索历史',style: TextStyle(
        fontSize: ScreenAdapter.fontSize(32),
        fontFamily: '微软雅黑'
      )),
    );
  }
}
