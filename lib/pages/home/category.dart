import 'package:flutter/material.dart';
import '../../utils/utils.dart';


class CategoryWidget extends StatefulWidget{
  _CategoryWidget createState()=> _CategoryWidget();
}

class _CategoryWidget extends State<CategoryWidget>{
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Container(
      width: double.infinity,
      height: ScreenAdapter.height(300),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:BorderRadius.circular(10)
      ),
      child:Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              CategoryIcon(),
              CategoryIcon(),
              CategoryIcon(),
              CategoryIcon(),
            ],
          )
        ],
      )
    );
  }
}

class CategoryIcon extends StatefulWidget{
  _CategoryIcon createState() =>_CategoryIcon();
}

class _CategoryIcon extends State<CategoryIcon>{
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return  Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        color: Colors.red,
        width: (ScreenAdapter.screenWidth() / 4) - 40,
        child: Text('hello'),
      ),
    );
  }
}
