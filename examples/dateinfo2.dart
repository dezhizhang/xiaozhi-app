import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class DateInfoPage2 extends StatelessWidget{
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
      // routes: {
      //   "/alertDialog":(context) => AlertDialogPage(),
      // },
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
    );
  }
}


// class HomeContent extends StatelessWidget{
//   Future<DateTime> _showDatePicker2(context) {
//     var date = DateTime.now();
//     // return showDatePicker(
//     //   context: context, 
//     //   initialDate: date, 
//     //   firstDate: date,
//     //   lastDate: date.add(
//     //     Duration(days: 30)
//     //   )
//     // );
//   }
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Center(
//       child: Column(
//         children: <Widget>[
//           RaisedButton(
//             child: Text('date'),
//             onPressed: () async{
//               await _showDatePicker(context);
//             },
//           )
//         ],
//       ),
//     );
//   }
// }

class HomeContent extends StatelessWidget{
  Future<DateTime> _showDatePicker2(context) {
    var date = DateTime.now();
    return showCupertinoDialog(
      context: context,
      builder: (context) {
        return SizedBox(
          height: 200,
          child: CupertinoDatePicker(
            mode:CupertinoDatePickerMode.dateAndTime,
            minimumDate: date,
            maximumDate: date.add(
             Duration(days: 30)
            ),
            maximumYear: date.year + 1,
            onDateTimeChanged: (DateTime value) {
              print(value);
            },
          ),
        );
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('dateInfo'),
            onPressed: () async{
              await _showDatePicker2(context);
            },
          )
        ],
      ),
    );
  }
}