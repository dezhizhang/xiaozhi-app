import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  final routes = {
    '/form':(context) => FormPage(),
    '/search':(context,{arguments}) => SearchPage(arguments:arguments),
  };
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:Text('晓知商城')
        ),
        body: HomeContent(),
      ),
      onGenerateRoute: (RouteSettings settings) {
        final String name = settings.name;
        final Function pageContentBuilder = this.routes[name];
        if(pageContentBuilder != null) {
          if(settings.arguments != null) {
            final Route route = MaterialPageRoute(
              builder: (context) => pageContentBuilder(context,
              arguments:settings.arguments
            )
            );
            return route;
          } else {
            final Route route = MaterialPageRoute(
              builder: (context) => pageContentBuilder(context)
            );
            return route;
          }
        } 
      },
      theme: ThemeData(
        primarySwatch: Colors.pink
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
            child: Text('跳到表单'),
            color: Colors.pink,
            onPressed: () {
              Navigator.pushNamed(context, '/form');
            },
          ),
          RaisedButton(
            child: Text('跳到搜索'),
            color: Colors.yellow,
            onPressed: () {
              Navigator.pushNamed(context, '/search',arguments: {
                "id":456
              });
            },
          )
        ],
      ),
    );
  }
}