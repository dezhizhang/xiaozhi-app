

import 'package:flutter/material.dart';
import '../../utils/utils.dart';


class Chat extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('联系客服'),
      ),
      body: Content(),
    );
  }
}

class Content extends StatefulWidget{
  _Content createState() => _Content();
}

class _Content extends State<Content>{
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    // TODO: implement build
    return Container(
      width: ScreenAdapter.width(750),
      height: ScreenAdapter.height(1334),
      color:Color.fromRGBO(238,238,238,1),
      child: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Text("hello")
            ],
          ),
          Positioned(
            bottom: 0,
            width: ScreenAdapter.width(750),
            child: Container(
              width: ScreenAdapter.width(750),
              // height:ScreenAdapter.height(250),
              decoration: BoxDecoration(
                color:Color.fromRGBO(238,238,238,1),
                border: Border(
                  top: BorderSide(
                    width: 1,
                    color: Colors.red
                  )
                )
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10),
                    child:  Row(
                    
                    children: <Widget>[
                      Container(
                        width: ScreenAdapter.width(68),
                        height: ScreenAdapter.height(68),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(68),
                        ),
                        child: Icon(Icons.voice_chat_sharp),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          // padding: EdgeInsets.all(10),
                          color:Colors.white,
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        )
                      ),
                      Container(
                        width: ScreenAdapter.width(68),
                        height: ScreenAdapter.width(68),
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(68),
                        ),
                        child: Icon(Icons.explore),
                      ),

                       Container(
                        width: ScreenAdapter.width(68),
                        height: ScreenAdapter.width(68),
                         decoration: BoxDecoration(
                          border: Border.all(
                            width:1,
                            color:Colors.black12
                          ),
                          borderRadius: BorderRadius.circular(68),
                        ),
                        child: Icon(Icons.add),
                      ),
                    ],
                  ),
                  )
                 
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}