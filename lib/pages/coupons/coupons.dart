
import 'package:flutter/material.dart';
import '../../utils/utils.dart';
class Coupons extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: Text('优惠券'),
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
    // TODO: implement build
    return Container(
      color: Color.fromRGBO(238,238,238,1),
      width: ScreenAdapter.width(750),
      height: ScreenAdapter.height(1334),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            // height: ScreenAdapter.height(100),
            child: Container(
              padding: EdgeInsets.only(left:ScreenAdapter.width(30),right:ScreenAdapter.width(30)),
              alignment: Alignment.center,
              color: Colors.white,
              width: ScreenAdapter.height(750),
              height: ScreenAdapter.height(100),
              child: Flex(
                direction: Axis.horizontal,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Text('合部'),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text('已使用'),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text('已失效'),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text('其它'),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}