import 'package:flutter/material.dart';
import './asset.dart';


class SearchPage extends StatefulWidget{
  _SearchPage createState() => _SearchPage();
}

class _SearchPage extends State<SearchPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('search'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('search');
            },
          ),
        ],
      ),
    );
  }
}