/*
 * @Author: your name
 * @Date: 2021-02-24 23:16:30
 * @LastEditTime: 2021-02-24 23:26:14
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

// class HomeContent extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return ClipRect(
//       child: Align(
//         alignment: Alignment.topCenter,
//         heightFactor: 0.5,
//         child: Container(
//           width: 150,
//           height: 150,
//           child: Image.asset(
//             "images/avator.png",
//             fit: BoxFit.cover,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class HomeContent extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(20),
//       child: Container(
//         height: 150,
//         width: 150,
//         child: Image.asset(
//           'images/avator.png',
//           fit: BoxFit.cover,
//         ),
//       ),
//     );
//   }
// }

// class HomeContent extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(20),
//       child: Container(
//         width: 150,
//         height: 150,
//         child: Image.asset(
//           "images/avator.png",
//           fit: BoxFit.cover,
//         ),
//       ),
//     );
//   }
// }

class HomeContent extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(size.width/2, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}