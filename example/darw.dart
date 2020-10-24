import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('组件'),
          centerTitle: true,
          backgroundColor: Colors.pink,

        ),
        drawer: Drawer(
          child: Text('Drawer'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

 class HomeContent extends StatelessWidget {
  const HomeContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text('body')
    );
  }
}
