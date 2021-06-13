/*
 * :file description: 
 * :name: /xiaozhi/lib/utils/utils.dart
 * :author: 张德志
 * :date created: 2021-05-28 17:52:05
 * :last editor: 张德志
 * :date last edited: 2021-06-13 23:02:46
 */
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class ScreenAdapter {
  static init(context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: true);
  }

  static width(double value) {
    return ScreenUtil().setWidth(value);
  }

  static height(double value) {
    return ScreenUtil().setHeight(value);
  }

  static screenHeight() {
    return ScreenUtil().screenHeight;
  }

  static screenWidth() {
    return ScreenUtil().screenWidth;
  }

  static fontSize(double fontSize) {
    return ScreenUtil().setSp(fontSize);
  }
}
