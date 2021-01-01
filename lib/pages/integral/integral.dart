

/**
 * @author:dezhizhang
 * @date:2020-12-30
 * @desc:积分页面
*/
import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class Integral extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('我的积分'),
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
          Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [Color.fromRGBO(255,118,78,1),Color.fromRGBO(255,82,80,1)],
                center: Alignment.topRight
              )
            ),
            width:ScreenAdapter.width(750),
            height: ScreenAdapter.height(160),
            // child: Text(),
          ),
          Positioned(
            top: ScreenAdapter.height(10),
            child: Container(
              padding: EdgeInsets.only(left:ScreenAdapter.width(30),right:ScreenAdapter.width(30)),
              child: Container(
                padding: EdgeInsets.only(left:ScreenAdapter.width(30),right: ScreenAdapter.width(30)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8)
                ),
                width:ScreenAdapter.width(690),
                height: ScreenAdapter.height(200),
                child: Flex(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('我的积分',style: TextStyle()),
                          Text('2000')
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(36),
                              gradient: RadialGradient(
                                colors: [Color.fromRGBO(255,203,45,1),Color.fromRGBO(255,130,54,1)],
                                center: Alignment.centerRight
                              )
                            ),
                            width:ScreenAdapter.width(160),
                            height: ScreenAdapter.height(60),
                            child: Text('立即签到',style: TextStyle(
                              color: Colors.white,
                              fontFamily: '微软雅黑'
                            )),
                          ),
                          Container()
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          )
        ],
      ),
    );
  }
}
