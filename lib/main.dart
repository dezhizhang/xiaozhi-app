/*
 * :file description: 
 * :name: /xiaozhi/lib/main.dart
 * :author: 张德志
 * :copyright: (c) 2021, Tungee
 * :date created: 2021-06-13 20:15:50
 * :last editor: 张德志
 * :date last edited: 2021-06-13 21:21:46
 */
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int sex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('radio'),
      ),
      body: HomeContent(),
    );
  }
}

class HomeContent extends StatefulWidget {
  _HomeContent createState() => _HomeContent();
}

class _HomeContent extends State<HomeContent> {
  int sex = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          RadioListTile(
              value: 1,
              groupValue: this.sex,
              title: Text('这是主标题'),
              subtitle: Text('这是二级标题'),
              onChanged: (value) {
                setState(() {
                  this.sex = value.hashCode;
                });
              }),
          RadioListTile(
              value: 2,
              groupValue: this.sex,
              title: Text('这是主标题'),
              subtitle: Text('这是二级标题'),
              onChanged: (value) {
                setState(() {
                  this.sex = value.hashCode;
                });
              })
        ],
      ),
    );
  }
}
