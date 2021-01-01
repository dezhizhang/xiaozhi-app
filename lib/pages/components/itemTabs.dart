/*
 * @Author: dezhizhang
 * @Date: 2020-12-26
 * @LastEditTime: 2020-12-13 17:46:05
 * @Description: tabs列表组件
 * @FilePath: /xiaozhi/lib/pages/cart/cartItemBtn.dart
 */
import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class ItemTabs extends StatefulWidget {

  String title;
  String content;
  double margin;
  bool isBack;
   ItemTabs({Key key,this.margin,this.title,this.content,this.isBack}):super(key:key);
  _ItemTabs createState() => _ItemTabs(this.title,this.content,this.margin,this.isBack);
}

class _ItemTabs extends State<ItemTabs> {
  String title;
  String content;
  double margin;
  bool isBack;
  _ItemTabs(this.title,this.content,this.margin,this.isBack);
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Container(
      margin: EdgeInsets.only(bottom:ScreenAdapter.height(this.margin)),
      alignment: Alignment.center,
      width: ScreenAdapter.width(750),
      height: ScreenAdapter.height(100),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
              bottom: BorderSide(
                  width: 1, color: Color.fromRGBO(246, 246, 250, 1)))),
      child: Flex(
        direction: Axis.horizontal,
        children: <Widget>[
          Expanded(
            flex:  this.isBack ? 12:25,
            child: Text("${this.title}"),
          ),
          Expanded(
            flex: 2,
            child: Text("${this.content}"),
          ),
          this.isBack ? 
          Expanded(
            flex: 1,
            child: Icon(Icons.arrow_right_outlined)
          ):Container()
        ],
      ),
    );
  }
}