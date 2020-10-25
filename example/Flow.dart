import 'dart:ui';
import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('晓智商城'),
//         ),
//         body: HomeContent(),
//       ),
//     );
//   }
// }

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('晓智商城'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Flow(
      delegate: TestFlowDelegate(margin: EdgeInsets.all(10.0)),
      children: <Widget>[
        Container(width: 80,height: 80,color: Colors.red),
        Container(width: 80,height: 80,color: Colors.red),
        Container(width: 80,height: 80,color: Colors.red),
        Container(width: 80,height: 80,color: Colors.red),
        Container(width: 80,height: 80,color: Colors.red),
        Container(width: 80,height: 80,color: Colors.red),
        Container(width: 80,height: 80,color: Colors.red),
        Container(width: 80,height: 80,color: Colors.green),
        

      ],
    );
  }
}

class TestFlowDelegate extends FlowDelegate {
  EdgeInsets margin = EdgeInsets.zero;
  TestFlowDelegate({this.margin});
  @override
  void paintChildren(FlowPaintingContext context) {
    var x = margin.left;
    var y = margin.top;
    //计算每一个子widget的位置  
    for (int i = 0; i < context.childCount; i++) {
      var w = context.getChildSize(i).width + x + margin.right;
      if (w < context.size.width) {
        context.paintChild(i,
            transform: new Matrix4.translationValues(
                x, y, 0.0));
        x = w + margin.left;
      } else {
        x = margin.left;
        y += context.getChildSize(i).height + margin.top + margin.bottom;
        //绘制子widget(有优化)  
        context.paintChild(i,
            transform: new Matrix4.translationValues(
                x, y, 0.0));
         x += context.getChildSize(i).width + margin.left + margin.right;
      }
    }
  }

  @override
  getSize(BoxConstraints constraints){
    //指定Flow的大小  
    return Size(double.infinity,200.0);
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    return oldDelegate != this;
  }
}