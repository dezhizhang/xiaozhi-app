

import 'package:flutter/material.dart';


class Scan extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('扫码'),
      ),
      body: Content(),
    );
  }
}

class Content extends StatefulWidget{
  _Content createState() => _Content();
}

class _Content extends State<Content>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        RaisedButton(
          color: Colors.pink,
          child: Text('扫码'),
          onPressed: (){
            print('hello');
          }
        )
      ],
    );
  }
}