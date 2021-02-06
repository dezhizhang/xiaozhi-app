

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../utils/utils.dart';

class Search extends StatefulWidget{
  _Search createState() => _Search();
}


class _Search extends State<Search>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TitleSearch()
      ),
    );
  }
}

class TitleSearch extends StatefulWidget{
  _TitleSearch createState() => _TitleSearch();
}

class _TitleSearch extends State<TitleSearch>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: ScreenAdapter.width(750),
      height: ScreenAdapter.height(60),
      child: Row(
        children: <Widget>[
          TextField(),
          Text('搜索')
        ],
      ),
    );
  }
}
