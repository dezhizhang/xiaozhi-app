import 'dart:ui';

import 'package:flutter/material.dart';
 

 class EventPage extends StatefulWidget{
   _EventPage createState() =>_EventPage();
 }

 class _EventPage extends State<EventPage>{
   String _operation = 'noevent';
   void updateText(String text) {
     setState(() {
       _operation = text;
     });
   }
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('event'),
       ),
       body:  Center(
       child: GestureDetector(
         child: Container(
           alignment: Alignment.center,
           color: Colors.blue,
           width: 100,
           height: 100,
           child: Text(_operation,style: TextStyle(color: Colors.pink)),
         ),
         onTap: () => updateText('onTap'),
         onDoubleTap: () => updateText('onDoubleTap'),
         onLongPress: () => updateText('onLongPress'),
       ),
     ),
     );
   }
 }