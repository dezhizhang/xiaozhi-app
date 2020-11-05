import 'dart:ui';

import 'package:flutter/material.dart';





class NavigatorPage  extends StatefulWidget{
  _NavigatorPage createState() =>_NavigatorPage();
}

class _NavigatorPage extends State<NavigatorPage> with SingleTickerProviderStateMixin{
  TabController _controller;
  @override
  void initState() { 
    super.initState();
    _controller = TabController(length: 3,vsync: this);
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('hello'),
        bottom: TabBar(
          controller: _controller,
          tabs: [
            Tab(icon: Icon(Icons.directions_car)),
            Tab(icon: Icon(Icons.directions_transit)),
            Tab(icon: Icon(Icons.directions_bike)),
          ],
        ),
      ),
    );
  }
}
