
/**
 * @author:zhangdezhi
 * @date:2021-1-20
 * @descc:热门产品模型
*/
class HotModel {
  int code;
  String msg;
  bool success;
  List<HotItemModel> data;

  HotModel({required this.code, required this.msg, required this.success, required this.data});

  HotModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    msg = json['msg'];
    success = json['success'];
    if (json['data'] != null) {
      data = new List<HotItemModel>();
      json['data'].forEach((v) {
        data.add(new HotItemModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['msg'] = this.msg;
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class HotItemModel {
  int clickCount;
  int goodsNumber;
  int sort;
  String isHot;
  bool isDelete;
  int status;
  int addTime;
  String sId;
  String title;
  String subTitle;
  String goodsVersion;
  String cateId;
  String price;
  String oldPrice;
  String freight;
  String inventory;
  String url;
  String goodsId;
  int iV;

  HotItemModel(
      {this.clickCount,
      this.goodsNumber,
      this.sort,
      this.isHot,
      this.isDelete,
      this.status,
      this.addTime,
      this.sId,
      this.title,
      this.subTitle,
      this.goodsVersion,
      this.cateId,
      this.price,
      this.oldPrice,
      this.freight,
      this.inventory,
      this.url,
      this.goodsId,
      this.iV});

  HotItemModel.fromJson(Map<String, dynamic> json) {
    clickCount = json['click_count'];
    goodsNumber = json['goods_number'];
    sort = json['sort'];
    isHot = json['is_hot'];
    isDelete = json['is_delete'];
    status = json['status'];
    addTime = json['add_time'];
    sId = json['_id'];
    title = json['title'];
    subTitle = json['sub_title'];
    goodsVersion = json['goods_version'];
    cateId = json['cate_id'];
    price = json['price'];
    oldPrice = json['old_price'];
    freight = json['freight'];
    inventory = json['inventory'];
    url = json['url'];
    goodsId = json['goods_id'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['click_count'] = this.clickCount;
    data['goods_number'] = this.goodsNumber;
    data['sort'] = this.sort;
    data['is_hot'] = this.isHot;
    data['is_delete'] = this.isDelete;
    data['status'] = this.status;
    data['add_time'] = this.addTime;
    data['_id'] = this.sId;
    data['title'] = this.title;
    data['sub_title'] = this.subTitle;
    data['goods_version'] = this.goodsVersion;
    data['cate_id'] = this.cateId;
    data['price'] = this.price;
    data['old_price'] = this.oldPrice;
    data['freight'] = this.freight;
    data['inventory'] = this.inventory;
    data['url'] = this.url;
    data['goods_id'] = this.goodsId;
    data['__v'] = this.iV;
    return data;
  }
}