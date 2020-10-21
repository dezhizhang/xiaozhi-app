import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Tabs(),
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
    );
  }
}



class Tabs extends StatefulWidget{
  Tabs({Key key}):super(key:key);
  _Tabs createState() =>_Tabs();
}

class _Tabs extends State<Tabs>{
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(
       title: Text('晓智商城'),
     ),
     body: HomeContent(),
     bottomNavigationBar: BottomNavigationBar(
       currentIndex: this._currentIndex,
       onTap: (int index) {
         setState(() {
           this._currentIndex = index;
         });
       },
       items: [
         BottomNavigationBarItem(
           icon: Icon(Icons.home),
           title: Text('首页')
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.settings),
           title: Text('设置')
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.category),
           title: Text('分类')
         )
       ],
     ),
   );
  }

}

class HomeContent extends StatefulWidget{
  @override
    HomeContent({Key key}):super(key:key);
  _HomeContent createState() =>_HomeContent();
  
}

class _HomeContent extends State<HomeContent>{
  bool _switchSelected = true;
  bool _checkboxSelected = true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Switch(
          value: this._switchSelected,
          onChanged: (value){
            setState(() {
              this._switchSelected = value;
            });
          },
        ),
        Checkbox(
          value: this._checkboxSelected,
          activeColor: Colors.red,
          onChanged: (value) {
            setState(() {
              this._checkboxSelected = value;
            });
          },
        )
      ],
    );
  }
  
}
