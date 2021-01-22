

import 'package:dio/dio.dart';
import '../config/config.dart';

class Service {
  getFocuInfo() async{
    return  await Dio().get("$URL/focus/info");
  }
  getProductInfo(params) async{
    return await Dio().get("$URL/product/list",queryParameters: params);
  }
  //获取分类信息
  getCategoryInfo() async{
    return await Dio().get("$URL/category/list");
  }
  //获取热门商品
  getHotProduct() async {
    return await Dio().get("$URL/product/hot");
  }
}