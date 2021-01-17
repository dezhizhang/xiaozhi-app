import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../../utils/utils.dart';



class Loading extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Center(
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          width: ScreenAdapter.width(200),
          height: ScreenAdapter.height(180),
          child: Column(
            mainAxisSize:MainAxisSize.min,
            children: <Widget>[
              SpinKitFadingCircle(
                color: Colors.black,
                size: ScreenAdapter.width(60),
              ),
              SizedBox(height:ScreenAdapter.height(20)),
              Text('加载中...')
            ],
          ),
        ),
      ),
    );
  }
}