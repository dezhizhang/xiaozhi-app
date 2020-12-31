/**
 * @author:dezhi
 * @date:2020-12-30
 * @desc:系统消息
*/
import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class SystemItem extends StatefulWidget {
  _SystemItem createState() => _SystemItem();
}

class _SystemItem extends State<SystemItem> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(bottom:ScreenAdapter.height(10)),
      padding: EdgeInsets.all(ScreenAdapter.width(20)),
      width: ScreenAdapter.width(750),
      height: ScreenAdapter.height(500),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: <Widget>[
          //文字
          Container(
            margin: EdgeInsets.only(bottom: ScreenAdapter.height(10)),
            width: ScreenAdapter.width(750),
            child: Flex(
              direction: Axis.horizontal,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Icon(Icons.message_rounded),
                ),
                Expanded(
                  flex: 8,
                  child: Text('通知', style: TextStyle(color: Colors.pink)),
                ),
                Expanded(
                  flex: 3,
                  child: Text('2020-12-25'),
                )
              ],
            ),
          ),
          //图片
          Container(
            margin: EdgeInsets.only(bottom: ScreenAdapter.height(10)),
            width: ScreenAdapter.width(750),
            height: ScreenAdapter.height(230),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'http://tugua.oss-cn-hangzhou.aliyuncs.com/16006149443991098.jpeg'))
                //
                ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: ScreenAdapter.height(15)),
            child: Text(
                '明白了长痘的原因后，我们就更容易对症下药，解决痘痘问题，以上几点情况是我近几年遇到比较多的，如果你恰好有类似情况，可以和我沟通沟通，根据你的个体差异，给你一些针对性的改善建议。'),
          ),
          Container(
            alignment: Alignment.center,
            child: Flex(
              direction: Axis.horizontal,
              children: <Widget>[
                Expanded(
                  flex: 8,
                  child: Text('查看详情', style: TextStyle(color: Colors.pink)),
                ),
                Expanded(
                  flex: 1,
                  child: Icon(Icons.arrow_right_sharp),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
