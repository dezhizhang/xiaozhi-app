import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class ListItem extends StatefulWidget {
  _ListItem createState() => _ListItem();
}

class _ListItem extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    // TODO: implement build
    return Container(
      alignment: Alignment.center,
      width: ScreenAdapter.width(690),
      height: ScreenAdapter.height(110),
      color: Colors.white,
      child: Flex(
        direction: Axis.horizontal,
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Container(
                width: ScreenAdapter.width(60),
                height: ScreenAdapter.height(80),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1051452078,2851059078&fm=26&gp=0.jpg'),
                      fit: BoxFit.cover),
                ),
              )),
          Expanded(
            flex: 4,
            child: Container(
                margin: EdgeInsets.only(left: ScreenAdapter.width(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('签到',style: TextStyle(
                      color: Color.fromRGBO(51,51,51,1),
                      fontSize: ScreenAdapter.fontSize(24),
                      fontFamily: '微软雅黑'
                    )), 
                    Text('连续签到可获得积分',style: TextStyle(
                      color: Color.fromRGBO(153,153,153,1),
                      fontSize: ScreenAdapter.fontSize(20),
                      fontFamily: '微软雅黑'
                    ))
                  ],
                )),
          ),
          Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: RadialGradient(colors: [
                      Color.fromRGBO(45, 109, 255, 1),
                      Color.fromRGBO(122, 115, 255, 1)
                    ])),
                width: ScreenAdapter.width(80),
                height: ScreenAdapter.height(40),
                child: Text('去完成',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: ScreenAdapter.fontSize(20))),
              ))
        ],
      ),
    );
  }
}
