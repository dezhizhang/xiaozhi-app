import 'package:flutter/material.dart';
 import './absorbpointer.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: HomeContent(),
      ),
      routes: {
        '/absorbpoint':(context) => AbsorbpointerPage(),
      },
    );
  }
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child:Column(
      children: <Widget>[
        RaisedButton(
          child: Text('absorbpoint'),
          onPressed: () {
            Navigator.pushNamed(context, '/absorbpoint');
          },
        )
      ],
    ),
    );
  }
}