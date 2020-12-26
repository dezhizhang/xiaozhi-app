import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class PeopleItem extends StatefulWidget {
  double margin;
  String title;
  String routeName;
  PeopleItem({Key key,this.margin,this.title,this.routeName,}):super(key:key);
  _PeopleItem createState() => _PeopleItem(this.margin,this.title,this.routeName);
}

class _PeopleItem extends State<PeopleItem> {
  String title;
  String routeName;
  double margin;
 
  _PeopleItem(this.margin,this.title,this.routeName);
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return InkWell(
      child: Container(
      margin: EdgeInsets.only(bottom:ScreenAdapter.height(this.margin)),
      padding: EdgeInsets.only(
          left: ScreenAdapter.width(20), right: ScreenAdapter.width(10)),
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
              child: Text(this.title),
            ),
            InkWell(
              child: Expanded(
              flex: 1,
              child: Icon(Icons.arrow_right_outlined)
              ),
            )
          ],
        ),
    ),
     onTap: () {
                Navigator.pushNamed(context, routeName);
              },
  ); 
  }
}
