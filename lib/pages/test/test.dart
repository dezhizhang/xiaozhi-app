


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/counter.dart';

class Test extends StatefulWidget{
  _Test createState() => _Test();
}

class _Test extends State<Test>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('测试页'),
        
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
    var countProvider = Provider.of<Counter>(context);
    // TODO: implement build
    return Center(
      child: Text('${countProvider.count}'),
    );
  }
}