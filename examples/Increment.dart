import 'package:flutter/material.dart';

class IncreatePage extends StatefulWidget{
  _IncreatePage createState() => _IncreatePage();
}

class _IncreatePage extends State<IncreatePage> with AutomaticKeepAliveClientMixin {
  int _counter = 0;
  @override
  bool get wantKeepAlive => true;

  void _incrementCounter() {
    setState((){
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('点一资增中一个数字'),
            Text(
              '${_counter}',
              style: Theme.of(context).textTheme.display1,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'increment',
        child: Icon(Icons.add),
      ),
    );
  }
}