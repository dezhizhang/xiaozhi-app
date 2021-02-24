/*
 * @Author: your name
 * @Date: 2021-02-24 20:42:52
 * @LastEditTime: 2021-02-24 22:10:45
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: /xiaozhi/lib/main.dart
 */
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  int _currentIndex = 1;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (context) {
        var local = Localizations.localeOf(context);
        if(local.languageCode == "zh") {
          return "刘德华";
        }
        return "laomeng";
      },
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
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            
          },
          currentIndex: _currentIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              
              title: Text('首页'),icon: Icon(Icons.home)
            ),
            BottomNavigationBarItem(title: Text('首页'),icon: Icon(Icons.home)),
            BottomNavigationBarItem(title: Text('首页'),icon: Icon(Icons.home)),
              

          ],
        ),
        endDrawer:Drawer(),
        
        // drawer: Drawer(),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.album),
            title: Text('老孟'),
            subtitle: Text("一枚有态度的程序员"),
          ),
          ButtonBar(
            children:<Widget>[
              FlatButton(
                child:Text('ok'),
                onPressed: () {

                }
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                }, 
                child: Text("非常对")
              )
            ]
          )
        ],
      ),
    );
  }
}

