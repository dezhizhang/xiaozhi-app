

import 'package:dio/dio.dart';
import '../utils/common.dart';

class Service {
  getFocuInfo() async{
    return  await Dio().get("$URL/focus/info");
  }
}