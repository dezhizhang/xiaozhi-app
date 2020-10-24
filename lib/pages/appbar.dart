import 'package:flutter/material.dart';


class AppBarPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('表单页面'),
          centerTitle: true,
          backgroundColor: Colors.pink,
          leading: IconButton(
            icon: Icon(Icons.backup_sharp),
            onPressed: () {

            },
          ),
        ),
      ),
    );
  }
}



