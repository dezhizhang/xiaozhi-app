

import 'package:flutter/material.dart';
import 'package:xiaozhi/pages/setting/setting.dart';
import '../../utils/utils.dart';

class CategoryItem extends StatefulWidget{
  String url;
  String title;
  String routeName;
  CategoryItem({Key key,this.url,this.title,this.routeName}):super(key:key);
  _CategoryItem createState() => _CategoryItem(this.url,this.title,this.routeName);
}

class _CategoryItem extends State<CategoryItem>{
  String url; 
  String title;
  Setting routeName;
  _CategoryItem(this.url,this.title,this.routeName);
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(
        left:ScreenAdapter.width(60)
      ),
      width: ScreenAdapter.width(100),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, this.routeName)
        },
        child:Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              bottom:ScreenAdapter.height(10)
            ),
            width:ScreenAdapter.width(100),
            height: ScreenAdapter.height(80),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                image: NetworkImage(this.url),
                fit: BoxFit.cover,
              )
            ),
          ),
          Container(
            child: Text(this.title,style: TextStyle(
              fontSize: ScreenAdapter.fontSize(28),
              fontFamily: '微软雅黑',
              color: Color.fromRGBO(102,102,102,1)
            )),
          ),
        ],
      ), 
      )
      
      
      
    );
  }
}
