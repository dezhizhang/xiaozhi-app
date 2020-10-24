import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget{
  final arguments;
  SearchPage({this.arguments});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('我是搜索页${arguments['id']}'),
        ),
      ),
    );
  }
}
