import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget{
  Map arguments;
  ProductPage({Key key,this.arguments}):super(key:key);
  _ProductPage createState() => _ProductPage();
}

class _ProductPage extends State<ProductPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hello'),
      ),
      body: Text('${widget.arguments}'),
    );
  }
}