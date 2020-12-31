

/**
 * @author:dezhizhang
 * @date:2020-12-30
 * @desc:积分页面
*/
import 'package:flutter/material.dart';

class Integral extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('我的积分'),
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
    // TODO: implement build
    return Text('我的积分');
  }
}
