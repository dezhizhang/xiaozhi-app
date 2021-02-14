

import 'package:flutter/material.dart';
import './searchTitle.dart';
import '../../utils/utils.dart';

class SearchContent extends StatefulWidget{
  _SearchContent createState() => _SearchContent();
}

class _SearchContent extends State<SearchContent>{
  @override
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
            children: <Widget>[
              Chip(
                label: Text('hello')
              ),
              Chip(
                label: Text('你好')
                
              )
              ],
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
          Container(
            width: ScreenAdapter.width(750),
            height: ScreenAdapter.height(60),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                width:1,
                color:Colors.red,
              )
            ),
            child:Text("删除搜索历史")
          )                                       
       ]
      ),
      
    );
  }
}