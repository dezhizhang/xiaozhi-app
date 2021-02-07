import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class ProductTabBar extends StatefulWidget {
  int index;
  String title;
  int activeIndex;
  final ValueChanged<int> changeColorCallBack;
  ProductTabBar({Key key,this.title,this.index,this.activeIndex,this.changeColorCallBack}):super(key: key);
  _ProductTabBar createState() => _ProductTabBar(this.title,this.index,this.activeIndex,this.changeColorCallBack);
}

class _ProductTabBar extends State<ProductTabBar> {
  int index;
  String title;
  int activeIndex;
  final ValueChanged<int> changeColorCallBack;
  _ProductTabBar(this.title,this.index,this.activeIndex,this.changeColorCallBack);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
      flex: 1,
      child:InkWell(
        onTap: () {
          changeColorCallBack(index);
        },
        child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 1,
              color: this.activeIndex == this.index ? Colors.pink:Colors.white
            )
          )
        ),
        alignment: Alignment.center,
        height: ScreenAdapter.height(80),
        child: Text(this.title)
        ),
      ),
    );
  }
}
