

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../utils/utils.dart';
import '../../utils/search.dart';
import './searchContent.dart';


class Search extends StatefulWidget{
  _Search createState() => _Search();
}


class _Search extends State<Search>{
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Scaffold(
      appBar: AppBar(
        title: TitleSearch(),
      ),
      body: SearchContent(),
    );
  }
}

class TitleSearch extends StatefulWidget{
  _TitleSearch createState() => _TitleSearch();
}

class _TitleSearch extends State<TitleSearch>{
  String search;
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    // TODO: implement build
    return Container(
      height: ScreenAdapter.height(60),
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left:ScreenAdapter.width(20)),
            width: ScreenAdapter.width(500),
            decoration: BoxDecoration(
              color: Color.fromRGBO(230,227,227,1),
              borderRadius: BorderRadius.circular(30)
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,      
              ),
              onChanged: (value) {
                setState(() {
                  this.search = value;
                });
              },
            ),
          ),
          SizedBox(width:ScreenAdapter.width(10)),
          InkWell(
            onTap: (){
              SearchStorage.setSearch(this.search);
              setState(() {
                this.search = '';
              });
            },
            child:Text("搜索",style: TextStyle(
            fontFamily: '微软雅黑',
            fontSize: ScreenAdapter.fontSize(30)
            ))
          )
        ],
      ),
    );
  }
}

