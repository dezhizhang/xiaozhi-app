import 'dart:ui';

import 'package:flutter/material.dart';
import '../../utils/utils.dart';


class ProductItem extends StatefulWidget {
  var item;
  ProductItem({Key key,this.item}):super(key: key);
  _ProductItem createState() => _ProductItem(this.item);
}

class _ProductItem extends State<ProductItem> {
  var item;
  _ProductItem(this.item);
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    print(item);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              width: ScreenAdapter.width(180),
              height: ScreenAdapter.height(180),
              child: Image.network(
                item.url,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                  height: ScreenAdapter.height(180),
                  child: Padding(
                    padding: EdgeInsets.all(ScreenAdapter.width(10)),
                    child: Column(
                      children: <Widget>[
                        Text(
                        
                          item.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: ScreenAdapter.height(20)),
                        Row(
                          children: <Widget>[
                            Container(
                              height: ScreenAdapter.height(36),
                              margin: EdgeInsets.only(right: 10),
                              padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromRGBO(230, 230, 230, 0.9),
                              ),
                              child: Text('4G'),
                            ),
                            Container(
                              height: ScreenAdapter.height(36),
                              margin: EdgeInsets.only(right: 10),
                              padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromRGBO(230, 230, 230, 0.9),
                              ),
                              child: Text('128G'),
                            )
                          ],
                        ),
                        SizedBox(height: ScreenAdapter.height(10)),
                        Row(
                          children: <Widget>[
                            Text(
                              '￥190',
                              style: TextStyle(color: Colors.red, fontSize: 14),
                            )
                          ],
                        )
                      ],
                    ),
                  )),
            )
          ],
        ),
        Divider(),
      ],
    );
  }
}
