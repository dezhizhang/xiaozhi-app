

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/counter.dart';
import '../../provider/cart.dart';

class CounterTest extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('测试'),
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
    var cartProvider = Provider.of<Cart>(context);
    // TODO: implement build
    return Column(
      children: <Widget>[
        RaisedButton(

          onPressed: () {
            cartProvider.addList('hello');
          },
          child: Text('增加'),
        ),
        RaisedButton(
          child: Text('跳转到测试'),
          onPressed: () {
            Navigator.pushNamed(context, '/test');
          }
        )
      ],
    );
  }
}