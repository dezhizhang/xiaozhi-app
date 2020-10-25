import 'package:flutter/material.dart';



class Drivinfo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('drivinfo'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatefulWidget{
  _HomeContent createState() => _HomeContent();
}

class _HomeContent extends State<HomeContent>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // this.getDevice();
  }
 
  @override
  Widget build(BuildContext context) {
    return Text('hello');
  }
}