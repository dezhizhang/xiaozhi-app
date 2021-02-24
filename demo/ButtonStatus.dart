/*
 * @Author: your name
 * @Date: 2021-02-24 00:30:47
 * @LastEditTime: 2021-02-24 07:54:31
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: /xiaozhi/lib/main.dart
 */
/*
 * @Author: your name
 * @Date: 2021-02-23 23:31:05
 * @LastEditTime: 2021-02-23 23:57:00
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: /xiaozhi/lib/main.dart
 */





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
        endDrawer:Drawer(),
        
        // drawer: Drawer(),
        body: ButtonCase(),
      ),
    );
  }
}




class ButtonCase extends StatefulWidget {
  @override
  _ButtonCaseState createState() => _ButtonCaseState();
}

class _ButtonCaseState extends State<ButtonCase> {
  ButtonStatus _buttonStatus = ButtonStatus.none;

  _buildChild() {
    // if (_buttonStatus == ButtonStatus.none) {
    //   return Text(
    //     '登 录',
    //     style: TextStyle(color: Colors.white,fontSize: 18),
    //   );
    // } else if (_buttonStatus == ButtonStatus.loading) {
    //   return CircularProgressIndicator(
    //     backgroundColor: Colors.white,
    //     strokeWidth: 2,
    //   );
    // } else if (_buttonStatus == ButtonStatus.done) {
    //   return Icon(
    //     Icons.check,
    //     color: Colors.white,
    //   );
    // }
    if(_buttonStatus == ButtonStatus.none) {
      return Text(
        "登 录",
        style: TextStyle(color: Colors.white,fontSize: 18),
      );
    }else if(_buttonStatus == ButtonStatus.loading) {
      return CircularProgressIndicator(
        backgroundColor: Colors.white,
        strokeWidth: 2,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.blue,
      minWidth: 240,
      height: 48,
      child: _buildChild(),
      onPressed: () {
        setState(() {
           _buttonStatus = ButtonStatus.loading;
           Future.delayed(Duration(seconds: 2),() {
             setState(() {
               _buttonStatus = ButtonStatus.done;
             });
           });
        });
      },
    );
  }
}

enum ButtonStatus { none, loading, done }

