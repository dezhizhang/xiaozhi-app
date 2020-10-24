import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget{
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
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print('hello');
          },
         
          backgroundColor: Colors.yellow,
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            width: 100,
            height: 32,
            child:  RaisedButton(
            child: Text('按钮'),
            color: Colors.green,
            elevation: 100,
            onPressed: () {
              print('hello');
            },
          ),
          ),
         
          OutlineButton(
            child: Text('线框按钮'),
            color:Colors.pink,
            onPressed: () {
              print('线框');
            },
          ),
          RaisedButton(
            child: Text('圆角按钮'),
            elevation: 20,
            color: Colors.pink,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            onPressed: (){

            },
          ),
          FlatButton(
            child: Text('浮动按钮'),
            color: Colors.yellow,
            textColor: Colors.white,
            onPressed: () {
              
            },
          )

        ],
      ),
    );
  }
}