import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../utils/utils.dart';
import '../../services/service.dart';

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
  bool checkbox = false;
  String mobile;
  bool countdown = false;
  int seconds = 60;
  String code;
  String verify = '获取验证码';
  @override
  void initState() { 
    super.initState();
    this._showTimer();
  }
  _showTimer() {
    Timer.periodic(Duration(milliseconds:1000), (timer) { 
      setState(() {
        this.seconds--;
      });
      if(this.seconds == 0) {
        timer.cancel();
        setState(() {
          this.countdown = false;
        });
      }
    });
  }
  handleVerify() async{
    RegExp reg = new  RegExp(r'^((13[0-9])|(14[0-9])|(15[0-9])|(16[0-9])|(17[0-9])|(18[0-9])|(19[0-9]))\d{8}$');
    if(!reg.hasMatch(this.mobile)) {
      Fluttertoast.showToast(
        msg: '输入的手机号不合法',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER
      );
      return;
    }
    setState(() {
      this.countdown = true;
    });
  }
  handleSubmit() async{
    print(mobile);
    if(this.mobile == null) {
      Fluttertoast.showToast(
        msg: '请输入手机号',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER
      );
      return;
    }
    if(this.code ==null) {
      Fluttertoast.showToast(
        msg: '请输入验证码',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER
      );
      return;
    }
    if(!this.checkbox) {
      Fluttertoast.showToast(
        msg: '请选择用户协议',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER
      );
      return;
    }
    var res = await Service().userLogin({});
    if(res.code == 200) {

    }
    

  }
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
              fontFamily: '微软雅黑',
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
                hintText: '手机号码',
              ),
              onChanged: (value) {
                setState(() {
                  this.mobile = value;
                });
              },
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
                      hintText:'验证码',
                    ),
                    onChanged: (value) {
                      setState(() {
                        this.code = value;
                      });
                    },
                  ) 
                ),
                Expanded(
                  child: InkWell(
                    onTap: this.handleVerify,
                    child:Text(this.countdown ? "${this.seconds} 秒":this.verify,style: TextStyle(
                    color: Color.fromRGBO(179,39,79,1),
                    fontSize: ScreenAdapter.fontSize(28),
                    fontFamily:'微软雅黑'
                  )),
                  ),
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
            child:InkWell(
              onTap: this.handleSubmit,
              child: Text('登录',style: TextStyle(
              color: Color.fromRGBO(254,254,254,1),
              fontSize: ScreenAdapter.fontSize(28),
              fontFamily: '微软雅黑'
            )),
            ), 
          ),
        ],
      ),
      ),
      Positioned(
        bottom: ScreenAdapter.height(100),
        left: ScreenAdapter.width(70),
        child: Row(
          children: <Widget>[
            Checkbox(
              value: checkbox,
              onChanged: (value) {
                setState(() {
                  this.checkbox = value;
                });
              } 
            ),
            Text('使用即同意《用户协议》及《隐私协议》',style: TextStyle(
              color: Color.fromRGBO(153,153,153,1),
              fontFamily: '微软雅黑',
              fontSize: ScreenAdapter.fontSize(28)
            ))
          ],
        ),
      )
      ],
    );
  }
}





