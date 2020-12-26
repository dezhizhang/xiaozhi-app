


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
      width: ScreenAdapter.width(750),
      height: ScreenAdapter.height(1334),
      child: Column(
        children: <Widget>[
          ItemTabs(title: "推送设置",content: "",isBack: true,margin: 0),
          ItemTabs(title: "推送设置",content: "",isBack: true,margin: 0),
        ],
      ),
    );
  }
}



