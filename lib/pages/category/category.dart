import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class Category extends StatefulWidget{
  _Category createState() => _Category();
}

class _Category extends State<Category>{
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Row(
      children: <Widget>[
        Container(
          color: Colors.white,
          width: ScreenAdapter.width(160),
          height: double.infinity,
          child: ListView.builder(
            itemCount: 28,
            itemBuilder: (context,index) {
              return Column(
                children: <Widget>[
                  InkWell(
                    onTap: () {

                    },
                    child: Container(
                      width: double.infinity,
                      height: ScreenAdapter.height(56),
                      child: Text('${index}'),
                    ),
                  ),
                  Divider(),
                ],
              );
            }
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.blue,
            height: double.infinity,
          ),
        )
      ],
    );
  }
}