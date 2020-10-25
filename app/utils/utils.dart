/**
 * @author:zhangdezhi
 * @date:2020-10-25
 * @desc:屏目适配
*/

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class ScreenAdapter{
  static init(context) {
   ScreenUtil.init(context, designSize: Size(750, 1334), allowFontScaling: true);
  }
  static width(double value) {
    return ScreenUtil().setWidth(value);
  }
  static height(double value) {
   return ScreenUtil().setHeight(value);
  }
  static screenHeight() {
    return  ScreenUtil().screenHeight;
  }
  static screenWidth() {
    return ScreenUtil().screenWidth;
  }
}