/*
 * @author:zhangdezhi
 * @date:2020-10-25
 * @desc:商品列表
*/
import 'dart:ui';
import 'package:flutter/material.dart';
import '../../services/service.dart';
import '../../utils/utils.dart';
import '../../model/product.dart';


class ProductWidget extends StatefulWidget{
  _ProductWidget createState()=> _ProductWidget();
}
class _ProductWidget extends State<ProductWidget>{
  List<ProductModelItem> list = [];
  @override
  void initState() { 
    super.initState();
    this.getProductList();
  }
  getProductList() async{
    var res = await Service().getProductInfo({"page":1});
    var proudct = ProductModel.fromJson(res.data);
    if(proudct.code == 200) {
      var list = proudct.data;
      setState(() {
        this.list = list;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Padding(
      padding: EdgeInsets.all(ScreenAdapter.height(10)),
      child: Wrap(
        runSpacing: 10,
        spacing: 10,
        children:list.map((item) => ProductItem(item)).toList(),
      ),
    );
  }
}

class ProductItem extends StatelessWidget{
  var item;
  ProductItem(ProductModelItem this.item, {Key key}):super(key:key);
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Container(
      width: (ScreenAdapter.screenWidth() - ScreenAdapter.height(60)) / 2,
      padding: EdgeInsets.all(ScreenAdapter.height(10)),
      decoration: BoxDecoration(
        border: Border.all(
          color:Color.fromRGBO(233, 233, 233, 0.9),
          width:ScreenAdapter.width(1),
        ),
        color: Colors.white
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            // height: ScreenAdapter.height(360),
            child: AspectRatio(
              aspectRatio: 1/1,
              child:Image.network(
              this.item.url,
              fit: BoxFit.cover,
              ),
            )
          ),
          Padding(
            padding: EdgeInsets.only(top:ScreenAdapter.height(10)),
            child: Text(
              this.item.title,
              textAlign: TextAlign.start,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top:ScreenAdapter.height(10)),
            child: Text(
              this.item.subTitle,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black54,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top:ScreenAdapter.height(10)),
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left:ScreenAdapter.width(20)),
                    child: Text(
                      "￥${this.item.price}",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                      ),
                    ),
                  )
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right:ScreenAdapter.width(20)),
                    child: Text(
                      "￥${this.item.oldPrice}",
                      style: TextStyle(
                        color: Colors.black54,
                        decoration: TextDecoration.lineThrough
                      ),
                    ),
                  ),
                  // child: Text('187'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}