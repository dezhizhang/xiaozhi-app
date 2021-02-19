/*
 * @Author: dezhi
 * @Date: 2021-02-19
 * @LastEditTime: 2021-02-19
 * @Description:购物车状态
 */
import 'package:flutter/material.dart';

class Cart with ChangeNotifier{
  List _cartList = [];
  int get cartNum => this._cartList.length;
  List get cartList => this._cartList;

  addList (value) {
    this._cartList.add(value);
    notifyListeners();
  }
  
}