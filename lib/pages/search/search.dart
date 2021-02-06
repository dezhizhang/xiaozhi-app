

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
  String keywords;
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Container(
      height: ScreenAdapter.height(60),
      child: Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            Expanded(
              flex: 6,
              child: Container(
                height:ScreenAdapter.height(60),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(230,227,227,1),
                  borderRadius: BorderRadius.circular(30)
                ),
              ),
            ),
            SizedBox(width:ScreenAdapter.width(10)),
            Expanded(
              flex: 1,
              child: Text('搜索'),
            ),
          ],
        ),
    );
  
  }
}
