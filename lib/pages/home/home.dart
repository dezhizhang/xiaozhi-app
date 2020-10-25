import 'package:flutter/material.dart';
import './swiper.dart';


class Home extends StatefulWidget{
  _Home createState() => _Home();
}

class _Home extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          SwiperCompt(),
        ],
      ),
    );
  }
}