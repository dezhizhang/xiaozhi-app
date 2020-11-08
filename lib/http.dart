import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
 
class HttpPage extends  StatefulWidget{
  _HttpPage createState() =>_HttpPage();
}

class _HttpPage extends State<HttpPage>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getData();
  }
  getData() async {
    Response response = await Dio().get('https://www.guicaioa.com/api/product/list',queryParameters: {"page":1});
    print(response.data.toString());
  }

  postData() async{
    Response response = await Dio().post('https://www.guicaioa.com/api/product/list',data: {'name':'123'});
    print(response.data.toString());
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('http'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              color: Colors.pink,
              child: Text('post'),
              onPressed: () async{
                this.postData();
              },
            )
          ],
        ),
      ),
    );
  }
}