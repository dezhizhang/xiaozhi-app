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
//     return Center(
//       child: AlertDialog(
//         title: Text('取消'),
//         content: Text('内容区'),
//         actions: <Widget>[
//           FlatButton(
//             child: Text('取消'),
//             onPressed: () => Navigator.of(context).pop(),
//           ),
//           FlatButton(
//             child: Text('确定'),
//             onPressed: () => {
//               print('确定')
//             },
//           )
//         ],
//       )
//     );
//   }
// }