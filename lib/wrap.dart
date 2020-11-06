
import 'package:flutter/material.dart';


class WrapPage extends StatefulWidget{
  _WrapPage createState() => _WrapPage();
}

class _WrapPage extends State<WrapPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('wrapper'),
      ),
      body: HomeContent(),
    );
  }
}

class HomeContent extends StatefulWidget{
  _HomeContent createState() => _HomeContent();
}

class _HomeContent extends State<HomeContent> {
  @override
  Widget build(BuildContext context) {
    return Text('hello');
  }
}
