

import 'package:flutter/material.dart';


class Sale extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('销售订单'),
      ),
      body: HomeContent(),
    );
  }
}

class  HomeContent extends StatefulWidget {
  _HomeContent createState() => _HomeContent();
}

class _HomeContent extends State<HomeContent>  {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}