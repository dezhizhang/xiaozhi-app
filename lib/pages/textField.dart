import 'package:flutter/material.dart';




class TextFieldPage extends  StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('表单页'),
        ),
        body: HomeContent(),
      )
    );
  }
}


class HomeContent extends StatefulWidget{
  _HomeContent createState() => _HomeContent();
}

class _HomeContent extends State<HomeContent>{
  String _description = '';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          TextField(
            maxLines: 4,
            decoration: InputDecoration(
              hintText: '请输入',
              border: OutlineInputBorder()
            ),
           onChanged: (value) {
             setState(() {
               this._description = value;
             });
           },
          ),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            child:RaisedButton(
            color: Colors.pink,
            textColor: Colors.white,
            child: Text('登录'),
            onPressed: () {
              print(this._description);
            },
          ),
          )
         
        ],
      ),
    );
  }
}

