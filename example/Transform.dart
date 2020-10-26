import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
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
      theme: ThemeData(
        primarySwatch: Colors.blueGrey
      ),
    );
  }
}

// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Center(
//       child: Container(
//       color: Colors.black,
//       child: Transform(
//         alignment: Alignment.topRight,
//         transform: Matrix4.skewY(0.3),
//         child: Container(
//           padding: EdgeInsets.all(8),
//           color: Colors.deepOrange,
//           child: Text('Apartment for rent!'),
//         ),
//       ),
//     ),
//     );
//   }
// }

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: DecoratedBox(
        decoration: BoxDecoration(color: Colors.red),
        child: Transform.translate(
          offset: Offset(-20,-5),
          child: Text('Hello world'),
        ),
      ),
    );
  }
}