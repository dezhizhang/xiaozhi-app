import 'package:flutter/material.dart';

class AddressAdd extends StatefulWidget{
  _AddressAdd createState() => _AddressAdd();
}

class _AddressAdd extends State<AddressAdd>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('增加收货地址'),
      ),
      body: Text('增加收货地址'),
    );
  }
}