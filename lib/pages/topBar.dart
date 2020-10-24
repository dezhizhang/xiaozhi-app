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
            title: Text('晓智商城'),
            bottom: TabBar(
              // isScrollable: true,
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
                  ListTile(title: Text('这是热门')),
                
                ],
              ),
               ListView(
                children: <Widget>[
                  ListTile(title: Text('这是推荐')),
                 
                ],
              ),
               ListView(
                children: <Widget>[
                  ListTile(title: Text('这是好卖')),
                 
                ],
              ), 
              ListView(
                children: <Widget>[
                  ListTile(title: Text('这是好评')),
                
                ],
              )
            ],
          ),
        ),
      ),

    );
  }
}
