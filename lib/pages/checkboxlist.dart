import 'package:flutter/material.dart';

class CheckBoxListTilePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('多选接钮组'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatefulWidget{
  _HomeContent createState() =>_HomeContent();
}

class _HomeContent extends State<HomeContent>{
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          CheckboxListTile(
            value: this._isSelected,
            title: Text('flutter'),
            subtitle: Text('flutter学习'),
            activeColor: Colors.red,
            onChanged: (value) {
              setState(() {
                this._isSelected = value;
              });
            },
          )
        ],
      ),
    );
  }
}