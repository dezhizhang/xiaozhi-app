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
      home: Scaffold(
        appBar: AppBar(
          title: Text('晓智商城'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class  HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.only(top:20),
      child: SizedBox(
        height: 100,
        child: Flex(
          direction: Axis.vertical,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                height: 30,
                color: Colors.red,
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 30,
                color: Colors.green,
              ),
            )
          ],
        ),
      ),
    );
  }
}