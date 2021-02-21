

import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';


class Network extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('网络请求'),
      ),
      body: Content(),
    );
  }
}

class Content extends StatefulWidget{
  _Content createState() => _Content();
}

class _Content extends State<Content>{
  var subscription;
  var netWorkText="没有网络";
  @override
  void initState() { 
    super.initState();
    this.getNetWork();
  }
  @override
  dispose() {
    super.dispose();
    subscription.cancel();
  }
  getNetWork() {
    subscription = Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      print('++++');
      print(result);
      print('++++');
      if(result==ConnectivityResult.wifi) {
        setState(() {
          this.netWorkText = "wifi";
        });
      }else if(result == ConnectivityResult.mobile) {
        setState(() {
          this.netWorkText = "mobile";
        });
      }else {
        setState(() {
          this.netWorkText = '没有网络';
        });
      }
    // Got a new connectivity status!
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text('${this.netWorkText}');
  }
}