import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';


class NetWorkPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('网络请求'),
          ),
          body:HomeContent(),
        ),
    );
  }
}

class HomeContent extends StatefulWidget{
  _HomeContent createState() => _HomeContent();
}

class _HomeContent extends State<HomeContent>{
  @override
  void initState() async{ 
    super.initState();
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      print('mobile');
      // I am connected to a mobile network.
    } else if (connectivityResult == ConnectivityResult.wifi) {
      print('wifi');
      // I am connected to a wifi network.
    } else {
      print('没有网络');
    }
    
  }
  dispose() {
    super.dispose();

  // subscription.cancel();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text('网络变化');
  }
}

// class HomeContent extends StatelessWidget{
//   @override
//   void initState() { 
//     super.initState();
    
//   }
//   Widget build(BuildContext context) {
//     return Text('网络变化');
//   }
// }