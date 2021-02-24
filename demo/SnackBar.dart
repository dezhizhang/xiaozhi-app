/*
 * @Author: your name
 * @Date: 2021-02-24 21:05:22
 * @LastEditTime: 2021-02-24 21:23:26
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: /xiaozhi/lib/main.dart
 */
/*
 * @Author: your name
 * @Date: 2021-02-24 20:42:52
 * @LastEditTime: 2021-02-24 21:03:20
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

// class HomeContent extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return RaisedButton(
//       child: Text('按钮'),
//       onPressed: () {
//         Scaffold.of(context).showSnackBar(
//           SnackBar(
//             content: Text('老孟，专注分享Flutter相关技术'),
//           )
//         );
//       }
//     );
//   }
// }

// class HomeContent extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return RaisedButton(
//       color: Colors.red,
//       child: Text('按钮'),
//       onPressed: () {
//         Scaffold.of(context).showSnackBar(
//           SnackBar(
//             backgroundColor: Colors.pink,
//             elevation: 8,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(10)
//             ),
//             content: Text("老孟，专注分享Flutter相关技术"),
//           )
//         );
//       },
//     );
//   }
// }

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return RaisedButton(
      color: Colors.pink,
      child: Text('按钮'),
      onPressed: () {
        Scaffold.of(context).showSnackBar(
        
          SnackBar(
            behavior: SnackBarBehavior.floating,
            content: Row(
              children: <Widget>[
                Icon(Icons.check,color: Colors.green),
                Text("下载成功")
              ],
            ),
            duration: Duration(seconds: 1),
          )
        );
      },
    );
  }
}