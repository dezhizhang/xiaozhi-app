/*
 * @Author: your name
 * @Date: 2021-02-24 00:30:47
 * @LastEditTime: 2021-02-24 07:16:34
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: /xiaozhi/lib/main.dart
 */
/*
 * @Author: your name
 * @Date: 2021-02-23 23:31:05
 * @LastEditTime: 2021-02-23 23:57:00
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: /xiaozhi/lib/main.dart
 */





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
        endDrawer:Drawer(),
        
        // drawer: Drawer(),
        body: HomeContent(),
      ),
    );
  }
}


class HomeContent extends StatefulWidget{
  _HomeContent createState() => _HomeContent();
}



class _HomeContent extends State<HomeContent>{
    double _sliderValue = 0;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child:Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          RaisedButton(
            child: Text('RaisedButton'),
            onPressed: () {},
            shape: BeveledRectangleBorder(
                side: BorderSide(width: 1, color: Colors.red),
                borderRadius: BorderRadius.circular(10)),
            elevation: 1.0,
          )
        ],
      ),
    );
  }
}


