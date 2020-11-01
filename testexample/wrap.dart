
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
    // TODO: implement build
    return Container(
      child: Wrap(
        spacing: 8.0,
        runSpacing: 4.0,
        alignment: WrapAlignment.start,
        children: <Widget>[
          Chip(
            avatar: CircleAvatar(backgroundColor: Colors.blue,child: Text('A'),),
            label: Text('Hamiltion'),
          ),
          Chip(
            avatar: CircleAvatar(backgroundColor: Colors.blue,child: Text('A'),),
            label: Text('Hamiltion'),
          ),
          Chip(
            avatar: CircleAvatar(backgroundColor: Colors.blue,child: Text('A'),),
            label: Text('Hamiltion'),
          ),
          Chip(
            avatar: CircleAvatar(backgroundColor: Colors.blue,child: Text('A'),),
            label: Text('Hamiltion'),
          )
        ],
      ),
    );
  }
}

// class HomeContent extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Column(
//       children: <Widget>[
//         Flex(
//           direction: Axis.horizontal,
//           children: <Widget>[
//             Expanded(
//               flex: 1,
//               child: Container(
//                 height: 30,
//                 color: Colors.red,
//               ),
//             ),
//             Expanded(
//               flex: 2,
//               child: Container(
//                 height: 30,
//                 color: Colors.green,
//               ),
//             )
//           ],
//         )
//       ],
//     );
//   }
// }
