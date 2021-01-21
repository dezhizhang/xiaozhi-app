import 'dart:ui';
import 'package:flutter/material.dart';
import '../../utils/utils.dart';
import './categoryItem.dart';

class CategoryWidget extends StatefulWidget {
  _CategoryWidget createState() => _CategoryWidget();
}

class _CategoryWidget extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Container(
      padding: EdgeInsets.only(
        top: ScreenAdapter.height(20),
        bottom: ScreenAdapter.height(20)
      ),
      margin: EdgeInsets.only(
        left:ScreenAdapter.width(20),
        right: ScreenAdapter.width(20)
      ),
      width: ScreenAdapter.width(690),
      height: ScreenAdapter.height(165),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: <Widget>[
          CategoryItem(),
          CategoryItem(),
          CategoryItem(),
          CategoryItem(),
        ],
      ),
    );
  }
}

// class CategoryItem extends StatefulWidget{
//   _CategoryItem createState() => _CategoryItem();
// }

// class _CategoryItem extends State<CategoryItem>{
//   @override
//   Widget build(BuildContext context) {
//     ScreenAdapter.init(context);
//     // TODO: implement build
//     return Container(
//       margin: EdgeInsets.only(
//         left:ScreenAdapter.width(50)
//       ),
//       width: ScreenAdapter.width(100),
//       child: Column(
//         children: <Widget>[
//           Container(
//             margin: EdgeInsets.only(
//               bottom:ScreenAdapter.height(10)
//             ),
//             width:ScreenAdapter.width(100),
//             height: ScreenAdapter.height(80),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(50),
//               image: DecorationImage(
//                 image: NetworkImage('http://tugua.oss-cn-hangzhou.aliyuncs.com/16006151939994201.jpeg'),
//                 fit: BoxFit.cover,
//               )
//             ),
//           ),
//           Container(
//             child: Text('女装',style: TextStyle(
//               fontSize: ScreenAdapter.fontSize(28),
//               fontFamily: '微软雅黑',
//               color: Color.fromRGBO(102,102,102,1)
//             )),
//           ),
//         ],
//       ),
//     );
//   }
// }



