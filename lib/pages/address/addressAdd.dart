import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:city_pickers/city_pickers.dart';
import '../../utils/utils.dart';

class AddressAdd extends StatefulWidget{
  _AddressAdd createState() => _AddressAdd();
}

class _AddressAdd extends State<AddressAdd>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('增加收货地址'),
      ),
      body: AddContent(),
    );
  }
}


class AddContent extends StatefulWidget{
  _AddContent createState() => _AddContent();
}

class _AddContent extends State<AddContent>{
  String area = "";
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(ScreenAdapter.height(10)),
      child: ListView(
        
        children: <Widget>[
          TextField(
            autofocus: true,
            decoration: InputDecoration(
                labelText: "收货人",
                hintText: "请输入收货人",
                prefixIcon: Icon(Icons.person)
            ),
          ),
          TextField(
            decoration: InputDecoration(
                labelText: "手机号",
                hintText: "请输入手机号",
                prefixIcon: Icon(Icons.phone)
            ),
            obscureText: true,
          ),
          InkWell(
            child: Container(
            // alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 1,color:Color.fromRGBO(143,143,143,1))
              )
            ),
            padding: EdgeInsets.all(10),
            height: ScreenAdapter.height(100),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.add_location,color: Color.fromRGBO(143,143,143,1),),
                    SizedBox(width: 10),
                    Text('省/市/区',style: TextStyle(
                      color: Color.fromRGBO(143,143,143,1),
                      fontFamily: '微软雅黑',
                    )),
                    SizedBox(width: 10),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left:40),
                  alignment: Alignment.centerLeft,
                  child:Text('${this.area}'),
                )
              ],
            ),
          ),
          onTap: () async{
            Result result = await CityPickers.showCityPicker(
              context: context,
            );
            setState(() {
              this.area = "${result.provinceName}${result.cityName}${result.areaName}";
            });
          },
        ),
        TextField(
            decoration: InputDecoration(
                labelText: "详细地址",
                hintText: "请输入详细地址",
                prefixIcon: Icon(Icons.add_location_alt_sharp),
              
            ),
            maxLines: 1,
            obscureText: true,
          ),
        SizedBox(height: 40),
        RaisedButton(
            color: Colors.blue,
            child: Text('确定',style: TextStyle(
              color: Colors.white,
              fontSize: ScreenAdapter.fontSize(30)
            )),
            onPressed: () {

            },
          )
        ],
      ),
    );
  }
}