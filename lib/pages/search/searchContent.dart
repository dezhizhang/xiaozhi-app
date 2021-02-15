

import 'package:flutter/material.dart';
import './searchTitle.dart';
import './clearBtn .dart';
import '../../utils/utils.dart';
import '../../utils/search.dart';

class SearchContent extends StatefulWidget{
  _SearchContent createState() => _SearchContent();
}

class _SearchContent extends State<SearchContent>{
  var searchList = [];
  @override
  void initState() { 
    super.initState();
    this.getStorage();
  }
  getStorage() async{
    var searchList = SearchStorage.getSearch();
    setState(() {
      this.searchList = searchList;
    });
  }
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    // TODO: implement build
    return Container(
      // padding: EdgeInsets.all(ScreenAdapter.width(30)),
      width: ScreenAdapter.width(750),
      height: ScreenAdapter.height(1334),
      color: Colors.white,
      child:ListView(
        padding: EdgeInsets.all(ScreenAdapter.width(30)),
        children:<Widget>[
          SearchTitle(title: '搜索历史'),  
          Wrap(
            children: this.searchList.map((item) => Chip(
              label:item ,
            )).toList(),
          ),
          SearchTitle(title:"热门搜索"),
          Column(
            children: <Widget>[
              ListTile(
                title:Text('hello')
              ),
              Divider(),
            ],
          ),
          SizedBox(height:ScreenAdapter.height(50)),
          ClearBtn(),                                 
       ]
      ),
      
    );
  }
}