


import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WebView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('打开外部应用'),
      ),
      body: Content(),
    );
  }
}

class Content extends StatefulWidget{
  _Content createState() => _Content();
}

class _Content extends State<Content>{
  //打开外部应用
  handleWeb() async{
    const url = 'http://www.xiaozhi.shop';
    if(await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  //拨打电话
  handlePhone() async{
    const tel = "tel:15083356190";
    if(await canLaunch(tel)) {
      await launch(tel);
    }else {
      throw 'Could not lunch $tel';
    }
  }
  //发送短信
  handleSms() async {
    const sms = "sms:15083356190";
    if(await canLaunch(sms)) {
      await launch(sms);
    } else {
      throw 'can not lunch $sms';
    }
  }
  //打开外部应用
  handleSystem() async{
    const sys = "weixin://";
     if(await canLaunch(sys)) {
      await launch(sys);
    } else {
      throw 'can not lunch $sys';
    }
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child:Column(
      children: <Widget>[
        RaisedButton(
          child: Text('打开外部浏览器'),
          onPressed: handleWeb
        ),
        RaisedButton(
          child: Text('打电话'),
          onPressed: handlePhone
        ),
        RaisedButton(
          
          child: Text('发短信'),
          onPressed: handleSms
        ),
        RaisedButton(
          child: Text('打开外部应用'),
          onPressed: handleSystem
        )
      ],
      ),
    );
    
    
  }
}