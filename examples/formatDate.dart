/*
 * :file description: 
 * :name: /xiaozhi/examples/formatDate.dart
 * :author: 张德志
 * :date created: 2021-06-13 20:15:50
 * :last editor: 张德志
 * :date last edited: 2021-06-13 22:43:55
 */
import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

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
  late DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: Column(
      children: <Widget>[
        Text('${this.now}'),
        Text(formatDate(DateTime.now(), [yyyy, '年', mm, ' 月', dd, '日']))
      ],
    ));
  }
}
