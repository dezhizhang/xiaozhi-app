import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class NewsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('news组件'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatefulWidget{
  _HomeContent createState()=>_HomeContent();
}

class _HomeContent extends State<HomeContent>{
  int page = 1;
  List list = [];
  ScrollController _scrollController = new ScrollController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._getData();
    _scrollController.addListener(() {
      if(_scrollController.position.pixels >= _scrollController.position.maxScrollExtent - 50) {
        print('hello');
        this._getData();
      }
     
    });
  }
  _getData() async {
    var apiURL = 'http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=${this.page}';
    Response response = await Dio().get(apiURL);
    setState(() {
      this.list.addAll(json.decode(response.data)['result']); 
      this.page++;
    });
  }
  Future<void> _onRefresh() async{
    await Future.delayed(Duration(milliseconds:200),(){
      this._getData();
    });
  }
  @override
  Widget build(BuildContext context) {
    return this.list.length > 0 ?
      RefreshIndicator(
        onRefresh: _onRefresh,
        child:ListView.builder(
          controller: this._scrollController,
          itemCount: this.list.length,
          itemBuilder: (context,index) {
            return ListTile(
              title: Text('${this.list[index]['title']}'),
            );
          }
        ) 
      ):Text('加载中');
  }
}