import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:convert';
import 'package:flutter_swiper/flutter_swiper.dart';

class DiaoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('diao组件'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatefulWidget{
  _HomeContent createState() => _HomeContent();
}

class _HomeContent extends State<HomeContent>{
  List  list = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getData();
  }
  getData() async{
    var apiURL = 'https://www.guicaioa.com/api/focus/info';
    Response response = await Dio().get(apiURL);
    setState(() {
      this.list = response.data['data'];
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Swiper(
          itemBuilder: (BuildContext context,int index) {
            return Image.network(list[index]['url'],fit: BoxFit.cover);
          },
          itemCount: list.length,
          pagination: SwiperPagination(),
          autoplay: true,
        ),
       
      ),
    );
  }
}