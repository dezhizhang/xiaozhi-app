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

// class HomeContent extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement buildre
//     return Center(
//       child: RaisedButton(
//         child: Text('normal'),
//         onPressed: () {
//           print('hello');
//         },
//       ),
//     );
//   }
// }

// class HomeContent extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Center(
//       child: FlatButton(
//         child: Text('normal'),
//         onPressed: (){
//           print('FlatButton');
//         },
//       ),
//     );
//   }
// }


// class HomeContent extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Center(
//       child: OutlineButton(
//         child: Text('normal'),
//         onPressed: () {
//           print('OutlineButton');
//         },
//       ),
//     );
//   }
// }

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: IconButton(
        color: Colors.pink,
        icon: Icon(Icons.thumb_down),
        onPressed: () {
          print('IconButton');
        },
      ),
    );
  }
}

