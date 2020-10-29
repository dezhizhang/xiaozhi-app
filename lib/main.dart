import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('晓智商城'),
//         ),
//         body: HomeContent(),
//       ),
//       routes: {
//         '/storage':(context) => StoragePage(),
//         '/web':(context) => WebPage()
//       },
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
        primarySwatch: Colors.blue
      ),
    );
  }
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('按钮'),
        onPressed: ()async{
          var result = await Navigator.push(context,
            MaterialPageRoute(
              @override
              builder: (context) {
                TipRoutrer(
                  
                )
              }
            )
          );
        },
      ),
    );
  }
}


