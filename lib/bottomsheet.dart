import 'dart:ui';

import 'package:flutter/material.dart';



class BottomSheetPage extends StatelessWidget{
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
  Future<int> _showModalBottomSheet(context) {
    return showModalBottomSheet<int>(
      context: context,
      builder: (BuildContext context) {
        return ListView.builder(
          itemCount: 30,
          itemBuilder: (BuildContext context,int index) {
            return ListTile(
              title: Text('${index}'),
              onTap: () => Navigator.of(context).pop(),
            );
          },
        );
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('hello'),
            onPressed: () async{
              int type = await _showModalBottomSheet(context);
            },
          )
        ],
      ),
    );
  }
}