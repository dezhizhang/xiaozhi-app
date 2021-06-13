/*
 * :file description: 
 * :name: /xiaozhi/lib/pages/components/customIcons.dart
 * :author: 张德志
 * :copyright: (c) 2021, Tungee
 * :date created: 2021-05-28 17:52:05
 * :last editor: 张德志
 * :date last edited: 2021-06-13 21:18:49
 */
import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class CustomIcons extends StatefulWidget {
  final double width;
  final double height;
  final double radious;
  final IconData icon;
  final Color color;
  final ValueChanged cb;
  CustomIcons(
      {required Key key,
      required this.width,
      required this.height,
      required this.radious,
      required this.icon,
      required this.cb,
      required this.color})
      : super(key: key);
  _CustomIcons createState() => _CustomIcons(
      this.width, this.height, this.radious, this.icon, this.cb, this.color);
}

class _CustomIcons extends State<CustomIcons> {
  final double width;
  final double height;
  final double radious;
  final IconData icon;
  final Color color;
  final ValueChanged cb;

  _CustomIcons(
      this.width, this.height, this.radious, this.icon, this.cb, this.color);
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return InkWell(
        onTap: () {
          cb('点击了');
        },
        child: Container(
          alignment: Alignment.center,
          width: ScreenAdapter.width(this.width),
          height: ScreenAdapter.height(this.height),
          child: Icon(this.icon, color: this.color),
          decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(this.radious)),
        ));
  }
}
