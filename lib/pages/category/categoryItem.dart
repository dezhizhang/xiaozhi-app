

import 'package:flutter/material.dart';
import '../../utils/utils.dart';


class CategoryItem extends StatefulWidget{
  String id;
  String url;
  String title;
  
  CategoryItem({Key key,this.title,this.url,this.id}):super(key:key);
  _CategoryItem createState() => _CategoryItem(this.title,this.url,this.id);
}

class _CategoryItem extends State<CategoryItem>{
  String id;
  String url;
  String title;
  _CategoryItem(this.title,this.url,this.id);
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/product',arguments:{
          id:this.id
        });
      },
      child:Container(
      padding: EdgeInsets.all(ScreenAdapter.width(20)),
      margin: EdgeInsets.only(bottom:ScreenAdapter.height(20)),
      width: ScreenAdapter.width(530),
      height:ScreenAdapter.height(200),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color:Color.fromRGBO(190, 192, 194, 0.4),
            offset: Offset(2.0,2.0),
          )
        ]
      ),
      child: Row(
        children: <Widget>[
          Container(
            width:ScreenAdapter.width(160),
            height:ScreenAdapter.height(140),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(this.url)
              )
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left:ScreenAdapter.width(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: <Widget>[
               Container(
                 alignment: Alignment.centerLeft,
                 margin: EdgeInsets.only(top:ScreenAdapter.height(20),bottom: ScreenAdapter.height(30)),
                 child:Text(this.title),
               ),
               Container(
                 child: Row(
                   children: <Widget>[
                      Text('￥280.00',style: TextStyle(
                        color: Color.fromRGBO(236,62,38,1)
                      )),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(16,142,239,1),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        margin: EdgeInsets.only(left:ScreenAdapter.width(82)),
                        width:ScreenAdapter.width(130),
                        height:ScreenAdapter.height(40),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.card_travel,color: Colors.white,size:ScreenAdapter.fontSize(28)),
                            SizedBox(width:ScreenAdapter.width(10)),
                            Text('购买',style: TextStyle(
                              color: Colors.white,
                              fontSize: ScreenAdapter.fontSize(24)
                            ))
                          ],
                        ),
                      )
                   ],
                 ),
               )
             ],
            )
          )
        ],
      ),
    ),
    ); 
  }
}
