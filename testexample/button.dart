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
//       child: OutlineButton(
//         child: Text('normal'),
//         onPressed: (){
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
//       child: RaisedButton.icon(
//         color: Colors.pink,
//         textColor: Colors.white,
//         icon: Icon(Icons.home),
//         label: Text('家'),
//         onPressed: () {

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
      child: FlatButton(
        color: Colors.blue,
        highlightColor: Colors.pink,
        colorBrightness: Brightness.dark,
        splashColor: Colors.grey,
        child: Text('提交'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        onPressed: () {
          
        },
      ),
    );
  }
}