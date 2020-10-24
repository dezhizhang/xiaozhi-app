import 'package:flutter/material.dart';


class TopBarPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('晓智'),
            bottom: TabBar(
              indicatorColor: Colors.pink,
              tabs: <Widget>[
                Tab(text: '热门'),
                Tab(text: '推荐'),
                Tab(text: '好卖'),
                Tab(text: '好评'),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  ListTile(title:Text('热门'))
                ],
              ),
              ListView(
                children: <Widget>[
                  ListTile(title:Text('推荐'))
                ],
              ),
              ListView(
                children: <Widget>[
                  ListTile(title:Text('好卖'))
                ],
              ),
              ListView(
                children: <Widget>[
                  ListTile(title:Text('好卖'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
} 
