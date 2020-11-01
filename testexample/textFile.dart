import 'dart:ui';

import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('晓智商城'),
//         ),
//         body: HomeContent(),
//       ),
//       theme: ThemeData(
//         primarySwatch: Colors.blue
//       ),
//     );
//   }
// }

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
        primaryColor: Colors.pink
      ),
    );
  }
}

// class HomeContent extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//    return Center(
//      child: Column(
//        children: <Widget>[
//          TextField(
//            autofocus: true,
//            decoration: InputDecoration(
//              labelText: '用户名',
//              hintText: '请输入用户名',
//              prefixIcon: Icon(Icons.home)
//            ),
//          ),
//          TextField(
//            autofocus: true,
//             decoration: InputDecoration(
//               labelText:'密码',
//               hintText: '请输入密码',
//               prefixIcon: Icon(Icons.lock) 
//             ),
//             obscureText: true,
//          )
//        ],
//      ),
//    );
//   }
// }

// class HomeContent extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Center(
//       child: Column(
//         children: <Widget>[
//           TextField(
//             decoration: InputDecoration(
//               labelText: '请输入用户名',
//               prefixIcon: Icon(Icons.person),
//               enabledBorder: UnderlineInputBorder(
//                 borderSide: BorderSide(color: Colors.grey)
//               ),
//               focusedBorder: UnderlineInputBorder(
//                 borderSide: BorderSide(color: Colors.blue)
//               )

//             ),
//           ),
//             TextField(
//             decoration: InputDecoration(
//               labelText: '请输入用户名',
//               prefixIcon: Icon(Icons.person),
             
//             ),
//             )
//         ],
//       ),
//     );
//   }
// }

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Center(
     child: TextField(
       keyboardType: TextInputType.emailAddress,
       decoration: InputDecoration(
         labelText: 'Email',
         hintText: '电子邮件',
         prefixIcon: Icon(Icons.email),
         border: InputBorder.none
       ),
     ),
   );
  }
}

