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
          TextField(
            decoration: InputDecoration(
                labelText: "详细地址",
                hintText: "请输入详细地址",
                prefixIcon: Icon(Icons.ac_unit),
              
            ),
            maxLines: 1,
            obscureText: true,
          ),
          RaisedButton(
            color: Colors.pink,
            child: Text('城市级联'),
            onPressed: () async {
              Result result = await CityPickers.showCityPicker(
                context: context,
              );
              print(result);
            },
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