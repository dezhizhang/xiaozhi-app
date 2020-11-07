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
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('晓智商城'),
//         ),
//         body: HomeContent(),
//       ),
//       routes: {
//         '/storage':(context) => StoragePage(),
//         '/web':(context) => WebPage()
//       },
//       theme: ThemeData(
//         primarySwatch: Colors.blue
//       ),
//     );
//   }
// }

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
//     return Center(
//       child: Text(
//       'hello world',
//       style: TextStyle(
//         color: Colors.blue,
//         fontSize: 18.0,
//         height: 1.2,
//         fontFamily: '微软雅黑',
//         decoration: TextDecoration.underline,
//         decorationStyle: TextDecorationStyle.dashed,
//       ),
//       ) ,
//     );
//   }
// }

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: GridView.extent(
        maxCrossAxisExtent: 120,
        childAspectRatio: 2.0,
        children: <Widget>[
          Icon(Icons.ac_unit),
          Icon(Icons.airport_shuttle),
          Icon(Icons.all_inclusive),
          Icon(Icons.beach_access),
          Icon(Icons.cake),
          Icon(Icons.free_breakfast),
        ],
      ),
    );
  }
}



