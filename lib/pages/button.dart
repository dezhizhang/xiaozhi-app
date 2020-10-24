import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('组件'),
          centerTitle: true,
          backgroundColor: Colors.pink,

        ),
        drawer: Drawer(
          child: Text('Drawer'),
        ),
        body: HomeContent(),
      ),
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
            child: Text('按钮'),
            onPressed: () {
              print('hello');
            },
          )
        ],
      ),
    );
  }
}