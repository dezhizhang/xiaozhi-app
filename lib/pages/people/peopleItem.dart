import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class PeopleItem extends StatefulWidget {
  double margin;
  PeopleItem({Key key,this.margin}):super(key:key);
  _PeopleItem createState() => _PeopleItem(this.margin);
}

class _PeopleItem extends State<PeopleItem> {
  double margin;
  _PeopleItem(this.margin);
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Container(
      margin: EdgeInsets.only(bottom:ScreenAdapter.height(this.margin)),
      padding: EdgeInsets.only(
          left: ScreenAdapter.width(20), right: ScreenAdapter.width(20)),
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
              flex: 1,
              child: Icon(Icons.star_outline),
            ),
            Expanded(
              flex: 4,
              child: Text('我的收藏'),
            ),
            Expanded(
              flex: 1,
              child: Text('hello'),
            ),
          ],
        ),
    );
  }
}
