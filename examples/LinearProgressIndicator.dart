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

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
      children: <Widget>[
        LinearProgressIndicator(
          backgroundColor: Colors.grey[200],
          valueColor: AlwaysStoppedAnimation(Colors.blue),
        ),
        SizedBox(height: 100),
        LinearProgressIndicator(
          backgroundColor:Colors.pink[100],
          valueColor: AlwaysStoppedAnimation(Colors.pink),
        )
      ],
    )
    );
  }
}

// class HomeContent extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Padding(
//       padding: EdgeInsets.all(10),
//       child: Column(
//         children: <Widget>[
//           CircularProgressIndicator(
//             backgroundColor: Colors.grey[200],
//             valueColor: AlwaysStoppedAnimation(Colors.pink),
//           )
//         ],
//       ),
//     );
//   }
// }