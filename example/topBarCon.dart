import 'package:flutter/material.dart';

class AppBarController extends StatefulWidget{
  @override
 AppBarController({Key key}):super(key:key);
 _AppBarController createState() => _AppBarController();

}

class _AppBarController extends State<AppBarController> with SingleTickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState() { 
    super.initState();
    this._tabController = TabController(vsync: this,length: 2);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child:  Scaffold(
        appBar: AppBar(
          title: Text('顶部tab切换'),
          bottom: TabBar(
            controller: this._tabController,
              tabs: <Widget>[
              Tab(
                child: Text('热门'),
              ),
              Tab(
                child: Text('推荐'),
              )
            ],
          ),
        ),
        body: TabBarView(
          controller: this._tabController,
          children: <Widget>[
            Center(
              child: Text('热门'),
            ),
            Center(
              child: Text('推荐'),
            )
          ],
        ),
      )
      ),
    );
  }
  
}

