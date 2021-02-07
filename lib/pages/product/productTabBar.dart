import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class ProductTabBar extends StatefulWidget {
  int index;
  String title;
  int currentIndex;
  ProductTabBar({Key key,this.title,this.index,this.currentIndex}):super(key: key);
  _ProductTabBar createState() => _ProductTabBar(this.title,this.index,this.currentIndex);
}

class _ProductTabBar extends State<ProductTabBar> {
  int index;
  String title;
  int currentIndex;
  _ProductTabBar(this.title,this.index,this.currentIndex);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 1,
              color: this.currentIndex == this.index ? Colors.pink:Colors.white
            )
          )
        ),
        alignment: Alignment.center,
        height: ScreenAdapter.height(80),
        child: Text(this.title),
      ),
    );
  }
}
