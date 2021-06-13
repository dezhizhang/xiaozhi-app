/*
 * @Author: dezhizhang
 * @Date: 2020-12-26
 * :date last edited: 2021-06-13 23:04:35
 * @Description: tabs列表组件
 * :name: /xiaozhi/lib/pages/components/itemTabs.dart
 */
import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class ItemTabs extends StatefulWidget {
  String title;
  String content;
  double margin;
  bool isBack;
  ItemTabs(
      {required Key? key,
      required this.margin,
      required this.title,
      required this.content,
      required this.isBack})
      : super();
  _ItemTabs createState() =>
      _ItemTabs(this.title, this.content, this.margin, this.isBack);
}

class _ItemTabs extends State<ItemTabs> {
  String title;
  String content;
  double margin;
  bool isBack;
  _ItemTabs(this.title, this.content, this.margin, this.isBack);
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Container(
      margin: EdgeInsets.only(bottom: ScreenAdapter.height(this.margin)),
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
            flex: this.isBack ? 12 : 25,
            child: Text("${this.title}"),
          ),
          Expanded(
            flex: 2,
            child: Text("${this.content}"),
          ),
          this.isBack
              ? Expanded(flex: 1, child: Icon(Icons.arrow_right_outlined))
              : Container()
        ],
      ),
    );
  }
}
