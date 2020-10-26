import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class WebPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('外部应用'),
        ),
        body: HomeContent(),
      )
    );
  }
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('打开浏览器'),
            onPressed: () async{
              const url = 'http://www.xiaozhi.shop';
              if(await canLaunch(url)) {
                await launch(url);
              }else {
                 throw 'Could not launch $url';
              }
            },
          )
        ],
      ),
    );
  }
}