import 'package:flutter/material.dart';

class DialogPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('轮播图组件'),
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
  alertDialog() async {
    showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text('温馨提示'),
        content: Text('您确定要删除吗？'),
        actions: <Widget>[
          FlatButton(
            child: Text('取消'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          FlatButton(
            child: Text('确定'),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      );
    }
  );
  }
  simpleDialog () async {
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text('单选按钮'),
          children: <Widget>[
            SimpleDialogOption(
              child:Text('option A'),
              onPressed:() {
                Navigator.pop(context);
              }
            ),
            SimpleDialogOption(
              child:Text('option B'),
              onPressed:() {
                Navigator.pop(context);
              }
            )
          ],
        );
      }
    );
  }
  bottomSheet () async {
    showModalBottomSheet(
      context: context, 
      builder: (context){
        return Container(
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('分享A'),
              ),
              ListTile(
                title: Text('分享B'),
              )
            ],
          ),
        );
      });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
      child:Column(
        children: <Widget>[
          RaisedButton(
            child: Text('alertDialog'),
            textColor: Colors.white,
            color: Colors.pink,
            onPressed: () {
              this.alertDialog();
            },
          ),
          RaisedButton(
            child: Text('simpleDialog'),
            textColor: Colors.white,
            color: Colors.yellow,
            onPressed: () {
              this.simpleDialog();
            },
          ),
          RaisedButton(
            child: Text('bottomSheet'),
            onPressed: () {
              this.bottomSheet();
            },
          )
        ],
      )
    ),
    );
  }
}