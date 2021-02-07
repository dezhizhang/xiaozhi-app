import 'package:flutter/material.dart';
import './productItem.dart';
import './productTabBar.dart';
import '../../utils/utils.dart';
import '../../services/service.dart';
import '../../model/product.dart';
import '../components/loading.dart';
class Product extends StatefulWidget{
  
  Map arguments;
  Product({Key key,this.arguments}):super(key:key);
  _Product createState() => _Product();
}

class _Product extends State<Product>{
  List<Map> tabBar = [
    {"title":"综合","index":0},
    {"title": "销量","index":1},
    {"title":"价格","index":2},
    {"title":"筛选","index":3},
  ];
  int page = 1;
  var list = [];
  int activeIndex = 0;

  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();
  @override
  @override
  void initState() { 
    super.initState();
    this.getProductList();
  }
  getProductList() async{
    var res = await Service().getProductInfo({"page":this.page});
    var proudct = ProductModel.fromJson(res.data);
    if(proudct.code == 200) {
      var list = proudct.data;
      setState(() {
        this.list.addAll(list);
      });
    }
  }
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        title: Text('商品列表'),
        actions: <Widget>[
          Text("") 
        ],
      ),
      endDrawer: Drawer(
        child: Container(
          child:Text("hello")
        ),
      ),
      
      body:Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(ScreenAdapter.width(10)),
          margin: EdgeInsets.only(top:ScreenAdapter.height(80)),
          child: this.list.length > 0 ? ListView.builder(
            itemCount: this.list.length,
            itemBuilder: (context,index){
              return ProductItem(item:list[index]);
            },
          ):Loading(),
        ),
        Positioned(
          width: ScreenAdapter.width(750),
          height: ScreenAdapter.height(80),
          child: Container(
            color:Colors.white,
            child:Flex(
              direction: Axis.horizontal,
              children: this.tabBar.map((item) => 
                ProductTabBar(
                  title:item['title'],
                  index:item["index"],
                  color:item["index"] == activeIndex ? Colors.pink:Colors.white,
                  changeColorCallBack:(index){
                    if(index == 3) {
                      this.activeIndex = index;
                      _globalKey.currentState.openEndDrawer();
                    }
                  }
                )
              ).toList(),
            ),
          ),
        ),
      ],
    ),
    );
  }
}

