import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget{
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
//       theme: ThemeData(
//         primarySwatch: Colors.blueGrey
//       ),
//     );
//   }
// }

class MyApp extends StatelessWidget {
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

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      alignment: Alignment.center,
      fit: StackFit.expand,
      children: <Widget>[
        Positioned(
          left: 18,
          child: Text('I am Jack'),
        ),
        Container(
          child: Text('hello world',style: TextStyle(color: Colors.pink)),
        ),
        Positioned(
          top: 18.0,
          child: Text('You frined'),
        )
      ],
    );
  }
}