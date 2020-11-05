
import 'dart:ui';

import 'package:flutter/material.dart';

class ToolTipPage extends StatefulWidget{
  _ToolTipPage createState() => _ToolTipPage();
}

// class _ToolTipPage extends State<ToolTipPage> {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('toolTip'),
//       ),
//       body: Center(
//         child: Tooltip(
//           message: '请别击我',
//           child: Image.network('http://tugua.oss-cn-hangzhou.aliyuncs.com/1600737225621499.jpeg'),
//         ),
//       )
//     );
//   }
// }

class _ToolTipPage extends State<ToolTipPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('toolTip'),
      ),
      body: Center(
        child: Tooltip(
          message: '请别点击我',
          child: Image.network('http://tugua.oss-cn-hangzhou.aliyuncs.com/1600737225621499.jpeg'),
        ),
      ),
    );
  }
}