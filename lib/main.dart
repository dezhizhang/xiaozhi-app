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
//     return RaisedButton(
//       child: Text('第一季'),
//       textColor: Colors.pink,
//       onPressed: (){
//         print('hello');
//       },
//     );
//   }
// }

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: <Widget>[
        RaisedButton(
          child: Text('第一集'),
          onPressed: () {
            print('第一集');
          },
        ),
        RaisedButton(
          child: Text('第二集'),
          onPressed: () {
            print('第二集');
          },
        ),
        RaisedButton(
          child: Text('第三集'),
          onPressed: () {
            print('第三集');
          },
        )
      ],
    );
  }
}