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

// class HomeContent extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//    return Center(
//      child: Text(
//        '晓智商城',
//        textDirection: TextDirection.ltr,
//        style: TextStyle(
//          fontSize: 40.0,
//          color: Colors.pink
//        ),
//      ),
//    );
//   }
// }

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text('晓智商城'),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
    );
  }
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Center(
     child: Stack(
       alignment: Alignment.center,
       children: <Widget>[
         Container(
           width:300,
           height:400,
           color:Colors.pink
         ),
         Text('我是一个文本',style: TextStyle(
           fontSize: 40,
           color: Colors.white
         ))
       ],
     ),
   );
  }
}

