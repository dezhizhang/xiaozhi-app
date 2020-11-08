import 'package:flutter/material.dart';
import '../../services/service.dart';
import '../../utils/utils.dart';
import '../../model/category.dart';

class Category extends StatefulWidget{
  _Category createState() => _Category();
}

class _Category extends State<Category>{
    List<CategoryModelItem> list = [];
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
       var list = category.data;
       setState(() {
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
          width: ScreenAdapter.width(160),
          height: double.infinity,
          child: ListView.builder(
            itemCount: this.list.length,
            itemBuilder: (context,index) {
              return Column(
                children: <Widget>[
                  InkWell(
                    onTap: () {

                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: ScreenAdapter.height(56),
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
            color: Colors.blue,
            height: double.infinity,
          ),
        )
      ],
    );
  }
}