


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../utils/utils.dart';
import '../components/itemTabs.dart';


class Setting extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('设置'),
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
    ScreenAdapter.init(context);
    return Container(
      color: Color.fromRGBO(238,238,238,1),
      width: ScreenAdapter.width(750),
      height: ScreenAdapter.height(1334),
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            width: ScreenAdapter.width(750),
            padding: EdgeInsets.only(left:ScreenAdapter.width(30),right:ScreenAdapter.width(30)),
            margin: EdgeInsets.only(bottom:ScreenAdapter.height(10)),
            child: Column(
              children: <Widget>[
                ItemTabs(title: '推送设置',isBack: true,content: '',margin: 0),
                ItemTabs(title: '清理缓存',isBack: false,content: '800',margin: 0),
                ItemTabs(title: '清理缓存',isBack: false,content: '800',margin: 0),
                // ItemTabs(title: '清理缓存',isBack: false,content: '800',margin: 0),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom:ScreenAdapter.height(10)),
            color: Colors.white,
            width: ScreenAdapter.width(750),
            padding: EdgeInsets.only(left:ScreenAdapter.width(30),right: ScreenAdapter.width(30)),
            child: Column(
              children: <Widget>[
                ItemTabs(title: '去评分',isBack: true,content: '',margin: 0),
                ItemTabs(title: '资质中心',isBack: true,content: '',margin: 0),
                ItemTabs(title: '版权信息',isBack: true,content: '',margin: 0),
                ItemTabs(title: '隐私中心',isBack: true,content: '',margin: 0),
                ItemTabs(title: '隐私中心',isBack: true,content: '',margin: 0),
                ItemTabs(title: '关于我们',isBack: true,content: '',margin: 0),
                ItemTabs(title: '推荐二维码',isBack: true,content: '',margin: 0),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            width: ScreenAdapter.width(750),
            padding: EdgeInsets.only(left:ScreenAdapter.width(30),right: ScreenAdapter.width(30)),
            child: Column(
              children: <Widget>[
                ItemTabs(title: '退出登录',isBack: true,content: '',margin: 0),
              ],
            ),
          )
        ],
      )
    );
  }
}



//
