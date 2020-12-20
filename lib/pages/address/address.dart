

import 'package:flutter/material.dart';
import './addressList.dart';

class Address extends StatefulWidget{
  _Address createState() => _Address();
}

class _Address extends State<Address>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('收货地址'),
      ),
      body: AddressList(),
    );
  }
}


