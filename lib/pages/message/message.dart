

import 'package:flutter/material.dart';


class Message extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('消息页'),
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
    return Text('我是内容区');
  }
}