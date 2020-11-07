import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
 
class RecognizerPage extends StatefulWidget{
  _RecognizerPage createState() => _RecognizerPage();
}

class _RecognizerPage extends State<RecognizerPage>{
  TapGestureRecognizer _tapGestureRecognizer = new TapGestureRecognizer();
  bool _toggle = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('more event'),
      ),
      body: Center(
        child: Text.rich(
          TextSpan(
            children:[
              TextSpan(text: '你好世界'),
              TextSpan(
                text: '点我变色',
                style: TextStyle(
                  fontSize: 30,
                  color: _toggle ? Colors.red:Colors.blue
                ),
                recognizer: _tapGestureRecognizer
                ..onTap = () {
                  setState(() {
                    _toggle = !_toggle;
                  });
                }
              ),
              TextSpan(text: '你好世界')
            ] 
          )
        ),
      )
    );
  }
}