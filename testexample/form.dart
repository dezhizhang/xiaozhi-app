import 'dart:ui';

import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('晓智商城'),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
    );
  }
}


class HomeContent extends StatefulWidget{
  _HomeContent createState() => _HomeContent();
}

class _HomeContent extends State<HomeContent>{
  TextEditingController _unameController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();
  GlobalKey _formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(10),
      child: Form(
        key: _formKey,
        autovalidate: true,
        child: Column(
          children: <Widget>[
            TextFormField(
              autofocus: true,
              controller: _unameController,
              decoration: InputDecoration(
                labelText: '用户名',
                hintText: '请输入用户名',
                icon: Icon(Icons.person)
              ),
              validator: (value){
                return value.trim().length > 0 ? null:"用户名不能为空";
              },
            ),
            TextFormField(
              controller: _pwdController,
              decoration: InputDecoration(
                labelText: '密码',
                hintText: '请输入密码',
                icon: Icon(Icons.lock),
              ),
              obscureText: true,
              validator: (value) {
                return value.trim().length > 5 ? null:"密码不能小于6位";
              },
            ),
            Padding(
              padding: EdgeInsets.only(top:10),
              child: Row(
                children: [
                  Expanded(
                    child:Builder(builder: (context){
                      return RaisedButton(
                        child: Text('登录'),
                        color: Colors.pink,
                        textColor: Colors.white,
                        onPressed: () {
                          if(Form.of(context).validate()) {
                            print('提交数据');
                          }
                        },
                      );
                    }),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}