/**
 * @author:dezhi
 * @date:20210101
 * @desc:投诉建议页面
*/
import 'package:flutter/material.dart';

class Advice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('投诉建议'),
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
    return Text('hello');
  }
}



                            