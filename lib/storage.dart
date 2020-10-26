import 'package:flutter/material.dart';

class StoragePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('本地存储'),
        ),
        body: HomeContent(),
      ),
    );
  }
}


class HomeContent extends StatefulWidget{
  _HomeContent createState() =>_HomeContent();
}

class _HomeContent extends State<HomeContent> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text('hello');
  }
}