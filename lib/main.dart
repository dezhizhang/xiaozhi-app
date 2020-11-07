import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class  HomeContent extends StatefulWidget{
  _HomeContent createState() => _HomeContent();
}

class _HomeContent extends State<HomeContent>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        Listener(
          child: ConstrainedBox(
            constraints: BoxConstraints.tight(Size(300,200)),
            child: DecoratedBox(
              decoration: BoxDecoration(color: Colors.blue),
            )
          ),
          onPointerDown: (event) => print('donw0'),
        ),
        Listener(
          child: ConstrainedBox(
            constraints: BoxConstraints.tight(Size(200,100)),
            child: Center(
              child: Text('左上解200*100范围被点透'),
            ),
          ),
          onPointerDown: (event) => print('down1'),
          behavior: HitTestBehavior.translucent,
        )
      ],
    );
  }
}