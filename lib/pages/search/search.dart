

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Search extends StatefulWidget{
  _Search createState() => _Search();
}


class _Search extends State<Search>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('搜索'),
      ),
    );
  }
}
