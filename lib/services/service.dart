

import 'package:dio/dio.dart';

class Service {
  getFocuInfo() async{
    return  await Dio().get('https://www.guicaioa.com/api/focus/info');
  }
}