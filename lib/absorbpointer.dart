import 'package:flutter/material.dart';
 
class AbsorbpointerPage extends StatefulWidget{
  _AbsorbpointerPage createState() => _AbsorbpointerPage();
}

class _AbsorbpointerPage extends State<AbsorbpointerPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('AbsorbPointer'),
      ),
      body:  Column(
      children: <Widget>[
        Listener(
          child: AbsorbPointer(
            child: Listener(
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
              onPointerDown: (event) => print('in'),
            )
          ),
          onPointerDown: (event) => print('up'),
        )
      ],
    ),
    );
  }
}