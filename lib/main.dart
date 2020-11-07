
import 'package:flutter/material.dart';

import './splashScreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('晓智商城'),
        ),
        body: SplashScreen(),
      ),
     
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
    );
  }
}



