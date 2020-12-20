/*
 * @Author: dezhizhang
 * @Date: 2020-10-25 17:33:26
 * @LastEditTime: 2020-12-13 20:02:23
 * @LastEditors: dezhizhang
 * @Description: 路由页面
 * @FilePath: /xiaozhi/lib/routers/router.dart
 */


import 'package:flutter/material.dart';
import '../pages/tabs/tabs.dart';
import '../pages/product/product.dart';
import '../pages/order/order.dart';
import '../pages/address/address.dart';

final routes = {
   
  '/':(context) => Tabs(),
  '/product':(context,{arguments}) => Product(arguments:arguments),
  '/order':(context) => Order(),
  '/address':(context) => Address(),
 
};

var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if(pageContentBuilder != null) {
    if(settings.arguments != null) {
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context,arguments:settings.arguments)
      );
      return route;
    } else {
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context)
      );
      return route;
    }
  } 
};