import 'package:flutter/material.dart';


class Counter with ChangeNotifier{
  int _count = 0;

  //获取私有方法
  int get count => _count;

  incCount() {
    _count++;
    notifyListeners();
  }
}
