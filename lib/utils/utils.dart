
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class ScreenAdapter{
  static init(context) {
   ScreenUtil.init(context, designSize: Size(750, 1334), allowFontScaling: true);
  }
  static setWidth(double value) {
    return ScreenUtil().setWidth(value);
  }
  static setHeight(double value) {
   return ScreenUtil().setHeight(value);
  }
  static screenHeight() {
    return  ScreenUtil().screenHeight;
  }
  static screenWidth() {
    return ScreenUtil().screenWidth;
  }
}