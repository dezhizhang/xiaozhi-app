/*
 * @Author: your name
 * @Date: 2021-02-24 21:28:50
 * @LastEditTime: 2021-02-24 21:51:48
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: /xiaozhi/lib/main.dart
 */
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
        body: SliverAppBarDemo(),
      ),
    );
  }
}

class SliverAppBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          floating:true,
          pinned: true,
          expandedHeight: 200.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('复仇者联盟'),
            background: Image.network(
              'http://img.haote.com/upload/20180918/2018091815372344164.jpg',
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        SliverFixedExtentList(
          itemExtent: 80.0,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Card(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.primaries[(index % 18)],
                  child: Text(''),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}


// class AnimationBaseDemo extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return SliverList(
//       delegate: SliverChildBuilderDelegate((content, index) {
//         return Container(
//           height: 65,
//           color: Colors.primaries[index % Colors.primaries.length],
//         );
//       }, childCount: 5),
//     );
//   }
// }



 