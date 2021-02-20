


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/cart.dart';


class TestItem extends StatefulWidget{
  _TestItem createState() => _TestItem();
}

class _TestItem extends State<TestItem>{
  @override
  Widget build(BuildContext context) {
    var cartProvider = Provider.of<Cart>(context);
    // TODO: implement build
    return Column(
      children: cartProvider.cartNum > 0 ? cartProvider.cartList.map((item) => ListTile(
        title: Text(item),
      )).toList():[],
    );
  }
}