/*
 * @Author: your name
 * @Date: 2021-02-23 22:43:13
 * @LastEditTime: 2021-02-23 23:26:49
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: /xiaozhi/lib/main.dart
 */



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate, 
        GlobalWidgetsLocalizations.delegate, 
      ],
      supportedLocales: [
        const Locale('zh', 'CH'),
        const Locale('en', 'US'),
      ],
      locale: Locale('zh'),
      home:Scaffold(
        appBar: AppBar(
          title: Text("AlertDialog"),
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
  _alertDialog(context) {
    showDialog(
      context: context, 
      barrierDismissible:false,
      builder: (context) {
        return AlertDialog(
          title: Text('提示'),
          content: Text('确认删除吗？'),
          backgroundColor: Colors.lightBlueAccent,
          elevation: 24,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
  
          actions: <Widget>[
            FlatButton(
              child: Text("取消"),
              onPressed: () {
                Navigator.of(context).pop('cancel');
              },
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).pop("ok");
              },
              // onPressed: () {
              //   Navigator.of(context).pop('ok');
              // }, 
              child: Text("确认")
              )
          ],
        );
      }
    );
  }
  //ios风格
  _cupertinoAlertDialog(context) {
      showCupertinoDialog(
        context: context, 
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text("提示"),
            content: Text("确认删除吗？"),
            actions: <Widget>[
              CupertinoDialogAction(child: Text('取消'),onPressed: (){},), 
              CupertinoDialogAction(child: Text('确认'),onPressed: (){},),
            ],
          );
        }
      );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text('切换'),
          onPressed: (){
            this._alertDialog(context);
          }
        ),
        RaisedButton(
          child: Text("ios"),
          onPressed: () {
            this._cupertinoAlertDialog(context);
          }
        ),
        RaisedButton(
          child: Text("SimpleDialog"),
          onPressed: () {
            SimpleDialog(
      title: Text('提示'),
      children: <Widget>[
        Container(
          height: 80,
          alignment: Alignment.center,

          child: Text('确认删除吗？'),
        ),
        Divider(height: 1,),
        FlatButton(
          child: Text('取消'),
          onPressed: () {
            Navigator.of(context).pop('cancel');
          },
        ),
        Divider(height: 1,),
        FlatButton(
          child: Text('确认'),
          onPressed: () {
            Navigator.of(context).pop('ok');
          },
        ),
      ],
    );
          }
        )
      ],
    );
  }
}


