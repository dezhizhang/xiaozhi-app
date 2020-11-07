import 'package:flutter/material.dart';
import './absorbpointer.dart';
import './event.dart';
import './dragEvent.dart';
import './recognizer.dart';
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: HomeContent(),
      ),
      routes: {
        '/absorbpoint':(context) => AbsorbpointerPage(),
        '/event':(context) => EventPage(),
        '/eventDrag':(context) => DragEventPage(),
        '/recognizer':(context) => RecognizerPage(),
      },
    );
  }
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child:Column(
      children: <Widget>[
        RaisedButton(
          child: Text('absorbpoint'),
          onPressed: () {
            Navigator.pushNamed(context, '/absorbpoint');
          },
        ),
        RaisedButton(
          child: Text('event'),
          onPressed: () {
            Navigator.pushNamed(context, '/event');
          },
        ),
        RaisedButton(
          child: Text('eventDrag'),
          onPressed: () {
            Navigator.pushNamed(context, '/eventDrag');
          },
        ),
        RaisedButton(
          child: Text('recognizer'),
          onPressed: () {
            Navigator.pushNamed(context, '/recognizer');
          },
        )
      ],
    ),
    );
  }
}