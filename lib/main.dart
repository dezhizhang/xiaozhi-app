
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  MyApp({Key key}):super(key:key);
  _MyApp createState() => _MyApp();
}

class _MyApp extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      home: HomeContent(),
    );
  }
}
 class HomeContent extends StatefulWidget {
  HomeContent({Key key}) : super(key: key);

  @override
  _HomeContent createState() => _HomeContent();
}


// class _HomeContent extends State<HomeContent>{
//   double _top = 0;
//   double _left = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('首页'),
//       ),
//       body: Stack(
//       children: <Widget>[
//         Positioned(
//           top: _top,
//           left: _left,
//           child: GestureDetector(
//             onVerticalDragUpdate: ( DragUpdateDetails e) {
//               setState(() {
//                 _top += e.delta.dy;
//               });
//             },
//             onHorizontalDragUpdate: ( DragUpdateDetails e) {
//               setState(() {
//                 _left += e.delta.dx;
//               });
//             },
//           )
//         )
//       ],
//     ),
//   );
// }

// }

class _HomeContent extends State<HomeContent>{
  double _top = 0;
  double _left = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            left: _left,
            child: GestureDetector(
              child: CircleAvatar(child: Text('A')),
              onHorizontalDragUpdate: (DragUpdateDetails e) {
                setState(() {
                  _left += e.delta.dx;
                });
              },
              onHorizontalDragEnd: (details) {
                print('onHorizontalDragEnd');
              },
              onTapDown: (details) {
                print('details');
              },
            )
          )
        ],
      ),
    );
  }
}










