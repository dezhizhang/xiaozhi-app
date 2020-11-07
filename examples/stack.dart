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
//     return ConstrainedBox(
//       constraints: BoxConstraints.expand(),
//       child: Stack(
//         alignment: Alignment.center,
//         children: <Widget>[
//           Container(
//             color: Colors.red,
//             child: Text('hello world',style: TextStyle(color: Colors.white)),
//           ),
//           Positioned(
//             left: 18.0,
//             child: Text('I am jack'),
//           ),
//           Positioned(
//             top: 18.0,
//             child: Text('your friend'),
//           )
//         ],
//       ),
//     );
//   }
// }

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ConstrainedBox(
      constraints: BoxConstraints.expand(),
      child: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            color: Colors.red,
            child: Text('hello world',style: TextStyle(color: Colors.white)),
          ),
          Positioned(
            left: 18.0,
            child: Text('I am jack'),
          ),
          Positioned(
            top: 18.0,
            child: Text('your friend'),
          )
        ],
      ),
    );
  }
}