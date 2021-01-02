

import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class Login extends StatefulWidget{
  _Login createState() => _Login();
}

class _Login extends State<Login>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('登录/注册'),
      ),
      body: Content(),
    );
  }
}

class Content extends StatefulWidget{
  @override
  _Content createState() => _Content();
}

class _Content extends  State<Content>{
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Stack(
      children: <Widget>[
        Container(
        padding: EdgeInsets.only(
        left:ScreenAdapter.width(70),
        right: ScreenAdapter.width(70),
        top: ScreenAdapter.height(110),
        bottom: ScreenAdapter.height(30)
      ),
      color: Colors.white,
      width:ScreenAdapter.width(750),
      height:ScreenAdapter.height(1334),
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(bottom:ScreenAdapter.height(30)),
            child:Text('手机登录',style: TextStyle(
              fontFamily: '59--Regular',
              fontWeight: FontWeight.normal,
              fontSize: ScreenAdapter.fontSize(58),
              color: Color.fromRGBO(0,0,0,1)
            ))
          ),
          Container(
            margin: EdgeInsets.only(bottom:ScreenAdapter.height(116)),
            child: Text('未注册过的手机将自动创建账号',style: TextStyle(
              fontSize: ScreenAdapter.fontSize(28),
              color: Color.fromRGBO(153, 153, 153, 1)
            )),
          ),
          Container(
            padding: EdgeInsets.only(left:ScreenAdapter.width(50)),
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(bottom:ScreenAdapter.height(40)),
            height: ScreenAdapter.height(90),
            width: ScreenAdapter.width(608),
            decoration: BoxDecoration(
              color: Color.fromRGBO(246, 246, 246,1),
              borderRadius: BorderRadius.circular(45)
            ),
            child:TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: '手机号码'
              ),
              autofocus: true,
            )
          ),
          Container(
            padding: EdgeInsets.only(left:ScreenAdapter.width(50)),
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(bottom:ScreenAdapter.height(60)),
            height: ScreenAdapter.height(90),
            width: ScreenAdapter.width(608),
            decoration: BoxDecoration(
              color: Color.fromRGBO(246, 246, 246,1),
              borderRadius: BorderRadius.circular(45)
            ),
            child: Flex(
              direction: Axis.horizontal,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child:TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText:'验证码'
                    ),
                  ) 
                ),
                Expanded(
                  child: Text('获取验证码',style: TextStyle(
                    color: Color.fromRGBO(179,39,79,1),
                    fontSize: ScreenAdapter.fontSize(28),
                    fontFamily:'微软雅黑'
                  ))
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left:ScreenAdapter.width(50)),
            alignment: Alignment.center,
            margin: EdgeInsets.only(bottom:ScreenAdapter.height(60)),
            height: ScreenAdapter.height(90),
            width: ScreenAdapter.width(608),
            decoration: BoxDecoration(
              color: Color.fromRGBO(246, 246, 246,1),
              borderRadius: BorderRadius.circular(45),
              gradient: RadialGradient(
                center: Alignment.topRight,
                radius: 0.98,
                colors: [Color.fromRGBO(255,118,78,1),Color.fromRGBO(255,82,80,1)]
              ),
              boxShadow: [ //卡片阴影
                BoxShadow(
                    color: Colors.black54,
                    offset: Offset(2.0, 2.0),
                    blurRadius: 4.0
                )
              ]
            ),
            child: Text('登录',style: TextStyle(
              color: Color.fromRGBO(254,254,254,1),
              fontSize: ScreenAdapter.fontSize(28),
              fontFamily: '微软雅黑'
            )),
          ),
          
        ],
      ),
      ),
      Positioned(
        bottom: ScreenAdapter.height(100),
        left: ScreenAdapter.width(70),
        child: Row(
          children: <Widget>[
            Radio(
              value: false,
              onChanged: (value){

              },
            
            ),
            Text('使用即同意《用户协议》及《隐私协议》',style: TextStyle(
              color: Color.fromRGBO(153,153,153,1),
              fontFamily: '59--Regular',
              fontSize: ScreenAdapter.fontSize(28)
            ))
          ],
        ),
      )
      ],
    );
  }
}





