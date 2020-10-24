import 'package:flutter/material.dart';

class CheckBoxPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('多选按钮'),
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
  bool _flag = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(10),
      child:  Column(
        children: <Widget>[
          Checkbox(
            value: this._flag,
            onChanged: (value) {
              setState(() {
                this._flag = value;
              });
            } ,
          ),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            child: RaisedButton(
            child: Text('登录'),
            color: Colors.pink,
            textColor: Colors.white,
            onPressed: () {
              print(this._flag);
            },
          ),
          )
         
        ],
      )
    );
  }
}


