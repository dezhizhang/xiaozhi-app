/**
 * @author:zhangdezhi
 * @date:2020-11-08
 * @desc:商品模型
*/
class ProductModel {
  int code;
  String msg;
  bool success;
  List<ProductModelItem> data;
  String page;
  int totalPage;

  ProductModel(
      {this.code,
      this.msg,
      this.success,
      this.data,
      this.page,
      this.totalPage});

  ProductModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    msg = json['msg'];
    success = json['success'];
    if (json['data'] != null) {
      data = new List<ProductModelItem>();
      json['data'].forEach((v) {
        data.add(new ProductModelItem.fromJson(v));
      });
    }
    page = json['page'];
    totalPage = json['totalPage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['msg'] = this.msg;
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    data['page'] = this.page;
    data['totalPage'] = this.totalPage;
    return data;
  }
}

class ProductModelItem {
  int clickCount;
  int goodsNumber;
  int sort;
  bool isDelete;
  int status;
  int addTime;
  String sId;
  int isBest;
  String isHot;
  int isNew;
  String title;
  String subTitle;
  String goodsVersion;
  String cateId;
  String price;
  String oldPrice;
  String freight;
  String inventory;
  String sales;
  String url;
  int iV;
  String goodsId;

  ProductModelItem(
      {this.clickCount,
      this.goodsNumber,
      this.sort,
      this.isDelete,
      this.status,
      this.addTime,
      this.sId,
      this.isBest,
      this.isHot,
      this.isNew,
      this.title,
      this.subTitle,
      this.goodsVersion,
      this.cateId,
      this.price,
      this.oldPrice,
      this.freight,
      this.inventory,
      this.sales,
      this.url,
      this.iV,
      this.goodsId});

  ProductModelItem.fromJson(Map<String, dynamic> json) {
    clickCount = json['click_count'];
    goodsNumber = json['goods_number'];
    sort = json['sort'];
    isDelete = json['is_delete'];
    status = json['status'];
    addTime = json['add_time'];
    sId = json['_id'];
    isBest = json['is_best'];
    isHot = json['is_hot'];
    isNew = json['is_new'];
    title = json['title'];
    subTitle = json['sub_title'];
    goodsVersion = json['goods_version'];
    cateId = json['cate_id'];
    price = json['price'];
    oldPrice = json['old_price'];
    freight = json['freight'];
    inventory = json['inventory'];
    sales = json['sales'];
    url = json['url'];
    iV = json['__v'];
    goodsId = json['goods_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['click_count'] = this.clickCount;
    data['goods_number'] = this.goodsNumber;
    data['sort'] = this.sort;
    data['is_delete'] = this.isDelete;
    data['status'] = this.status;
    data['add_time'] = this.addTime;
    data['_id'] = this.sId;
    data['is_best'] = this.isBest;
    data['is_hot'] = this.isHot;
    data['is_new'] = this.isNew;
    data['title'] = this.title;
    data['sub_title'] = this.subTitle;
    data['goods_version'] = this.goodsVersion;
    data['cate_id'] = this.cateId;
    data['price'] = this.price;
    data['old_price'] = this.oldPrice;
    data['freight'] = this.freight;
    data['inventory'] = this.inventory;
    data['sales'] = this.sales;
    data['url'] = this.url;
    data['__v'] = this.iV;
    data['goods_id'] = this.goodsId;
    return data;
  }
}