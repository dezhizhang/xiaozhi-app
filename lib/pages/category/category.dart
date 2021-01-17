import 'dart:ui';
import 'package:flutter/material.dart';
import '../../services/service.dart';
import '../../utils/utils.dart';
import '../../model/category.dart';
import './categoryItem.dart';

class Category extends StatefulWidget{
  _Category createState() => _Category();
}

class _Category extends State<Category> with AutomaticKeepAliveClientMixin{
  int   _selectIndex = 0;
  List<CategoryModelItem> list = [];
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getCategoryList();
  }
  getCategoryList() async{
    var res = await Service().getCategoryInfo();
    var category = CategoryModel.fromJson(res.data);
    if(category.code == 200) {
      print(category.data);
      var list = category.data;
      this.setState(() {
        this.list = list;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
   
    ScreenAdapter.init(context);
    return Row(
      children: <Widget>[
        Container(
          color: Colors.white,
          width: ScreenAdapter.screenWidth() / 4.6,
          height: double.infinity,
          child: ListView.builder(
            itemCount: this.list.length,
            itemBuilder: (context,index) {
              return Column(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      setState(() {
                        _selectIndex = index;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: ScreenAdapter.height(56),
                      color: _selectIndex == index ? Color.fromRGBO(242,242,242,1):Colors.white,
                      child: Text(
                        this.list[index].title,
                        textAlign: TextAlign.center,
                      ),
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
            color: Color.fromRGBO(242,242,242,1),
            padding: EdgeInsets.all(ScreenAdapter.width(20)),
            height: double.infinity,
            child: list.length > 0 ? ListView.builder(
              itemCount: list[this._selectIndex].items.length,
              itemBuilder: (context,index) {
                String id = list[this._selectIndex].items[index].sId;
                String url = list[this._selectIndex].items[index].url;
                String title = list[this._selectIndex].items[index].title;
                return CategoryItem(title:title,url:url,id:id);
              }
            ):Text('加载中'),
          ),
        )
      ],
    );
  }
}
