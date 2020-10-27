import 'package:flutter/material.dart';
import './utils/storage.dart';

class StoragePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('本地存储'),
        ),
        body: HomeContent(),
      ),
    );
  }
}


class HomeContent extends StatefulWidget{
  _HomeContent createState() =>_HomeContent();
}

class _HomeContent extends State<HomeContent> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('保存数据'),
            color: Colors.pink,
            onPressed: () async{
              await Storage.setString('username', 'hello');
            },
          ),
          RaisedButton(
            child: Text('获取数据'),
            color: Colors.yellow,
            onPressed: () async{
              var username = await Storage.getString('username');
              print(username);
            },
          )
        ],
      ),
    );
  }
}