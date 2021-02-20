
/*
 * @Author: dezhizhang
 * @Date: 2020-10-25 17:33:26
 * @LastEditTime: 2020-12-13 20:02:23
 * @LastEditors: dezhizhang
 * @Description: 路由页面
 * @FilePath: /xiaozhi/lib/routers/router.dart
 */
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
  //获取商品轮播图
  getDetailPhoto(params) async {
    return await Dio().get("$URL/detail/photo",queryParameters:params);
  }
  //用户登录
  userLogin(params) async {
    return await Dio().post("$URL/user/login",data: params);
  }
}