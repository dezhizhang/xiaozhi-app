import 'dart:ui';

import 'package:flutter/material.dart';



class DateInfoPage extends StatelessWidget{
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
      // routes: {
      //   "/alertDialog":(context) => AlertDialogPage(),
      // },
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
    );
  }
}


class HomeContent extends StatelessWidget{
  Future<DateTime> _showDatePicker(context) {
    var date = DateTime.now();
    return showDatePicker(
      context: context, 
      initialDate: date, 
      firstDate: date,
      lastDate: date.add(
        Duration(days: 30)
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('date'),
            onPressed: () async{
              await _showDatePicker(context);
            },
          )
        ],
      ),
    );
  }
}