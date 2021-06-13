/*
 * :file description: 
 * :name: /xiaozhi/lib/main.dart
 * :author: 张德志
 * :copyright: (c) 2021, Tungee
 * :date created: 2021-06-13 20:15:50
 * :last editor: 张德志
 * :date last edited: 2021-06-13 21:59:16
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
    final List<Widget> aboutBoxChildren = <Widget>[
      SizedBox(height: 24),
      RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
                text: 'Flutter is Google’s UI toolkit for building beautiful, '
                    'natively compiled applications for mobile, web, and desktop '
                    'from a single codebase. Learn more about Flutter at '),
            TextSpan(text: 'https://flutter.dev'),
            TextSpan(text: '.'),
          ],
        ),
      ),
    ];
    return Container(
      child: AboutListTile(
        applicationIcon: Image.network(
          'http://imgguicai.oss-cn-hangzhou.aliyuncs.com/15951731012219558.jpeg',
          fit: BoxFit.cover,
          width: 100,
          height: 100,
        ),
        applicationName: '弹框',
        aboutBoxChildren: aboutBoxChildren,
        child: Text('你好我是一个程序员'),
      ),
    );
  }
}
