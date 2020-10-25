import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_swiper/flutter_swiper.dart';
import 'dart:convert';


class HttpPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('http组件'),
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
  List<Map> list= [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getData();
  }
  getData() async {
    var url = 'https://www.guicaioa.com/api/focus/info';
    var result = await http.get(url);
    if(result.statusCode == 200) {
      setState(() {
        print(json.decode(result.body));
        this.list = json.decode(result.body);
        // print(this.list);
       
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child:this.list.length > 0 ? Swiper(
          itemBuilder: (BuildContext context,int index){
            return Image.network(this.list[index]['url'],fit:BoxFit.fill);
          },
          itemCount: this.list.length,
          pagination: SwiperPagination(),
          autoplay: true,
          control: SwiperControl(),
        ):Text('加载中....'),
      ),
    );
  }
}
