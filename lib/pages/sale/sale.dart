

import 'package:flutter/material.dart';
import '../../utils/utils.dart';


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
    ScreenAdapter.init(context);
    return Container(
      width: ScreenAdapter.width(750),
      height: ScreenAdapter.height(1334),
      child: Text('hello'),
    );
  }
}