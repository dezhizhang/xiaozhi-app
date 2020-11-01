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
        primarySwatch: Colors.blue
      ),
    );
  }
}

// class HomeContent extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return  Center(
//       child:DecoratedBox(
//       decoration: BoxDecoration(
//         color: Colors.red
//       ),
//       child: Transform.translate(
//         offset: Offset(-20.0,-5.0),
//         child: Text('hello world'),
//       ),
//     ),
//     );
//   }
// }

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.red,
      ),
      child: Transform.rotate(
        angle: 160,
        child: Text('hello'),
      ),

    )
    );
  }
}