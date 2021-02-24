import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate, 
        GlobalWidgetsLocalizations.delegate, 
      ],
      supportedLocales: [
        const Locale('zh', 'CH'),
        const Locale('en', 'US'),
      ],
      locale: Locale('zh'),
      home:Scaffold(
        appBar: AppBar(
          title: Text("AlertDialog"),
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
    return Table(
      border: TableBorder(
        top: BorderSide(color: Colors.black12),
        left: BorderSide(color: Colors.black12),
        right: BorderSide(color: Colors.black12),
        bottom: BorderSide(color: Colors.black12),
        horizontalInside: BorderSide(color: Colors.black12),
        verticalInside: BorderSide(color: Colors.black12),
      ),
      children: [
        TableRow(
          children: [
            TableCell(child: Text('姓名')),
            TableCell(child: Text('性别')),
            TableCell(child: Text('年龄'))
          ]
        ),
        TableRow(
          children: [
            TableCell(child: Text('小红')),
            TableCell(child: Text('女')),
            TableCell(child: Text('18'))
          ]
        )
      ],
    );
  }
}

