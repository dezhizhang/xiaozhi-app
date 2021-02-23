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
          // leading: BackButton(),
          // centerTitle:true,
          title: Text("AlertDialog"),
          // bottom: TabBar(
          //   // controller: TabController(length: 5,vsync: this),
          //   tabs: <Widget>[
          //     Text('语文'),
          //     Text('数学'),
          //     Text('英语'),
          //     Text('体育'),
          //     Text('音乐'),

          //   ],
          // ),
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
  var _alignment = Alignment.topLeft;



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 200,
      height: 200,
      color: Colors.lightBlue,
      child: AnimatedAlign(
        alignment: _alignment,
        duration: Duration(seconds: 2),
        child: IconButton(
          icon: Icon(Icons.print,color:Colors.red,size: 30,),
          onPressed: (){
            setState(() {
              _alignment = Alignment.bottomRight;
            });
          },
        ),
      ),
    );
  }
}


