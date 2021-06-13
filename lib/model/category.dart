/*
 * :file description: 
 * :name: /xiaozhi/lib/model/category.dart
 * :author: 张德志
 * :date created: 2021-05-28 17:52:05
 * :last editor: 张德志
 * :date last edited: 2021-06-13 21:28:04
 */
class CategoryModel {
  int code;
  String msg;
  bool success;
  List<CategoryModelItem> data;

  CategoryModel(
      {required this.code,
      required this.msg,
      required this.success,
      required this.data});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    msg = json['msg'];
    success = json['success'];
    if (json['data'] != null) {
      // ignore: deprecated_member_use
      data = new List<CategoryModelItem>();
      json['data'].forEach((v) {
        data.add(new CategoryModelItem.fromJson(v));
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

class CategoryModelItem {
  String sId;
  int sort;
  int status;
  int addTime;
  String title;
  String pid;
  String filterAttr;
  String link;
  String subTitle;
  String description;
  String url;
  String fileName;
  int iV;
  List<Items> items;

  CategoryModelItem(
      {required this.sId,
      required this.sort,
      required this.status,
      required this.addTime,
      required this.title,
      required this.pid,
      required this.filterAttr,
      required this.link,
      required this.subTitle,
      required this.description,
      required this.url,
      required this.fileName,
      required this.iV,
      required this.items});

  CategoryModelItem.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    sort = json['sort'];
    status = json['status'];
    addTime = json['add_time'];
    title = json['title'];
    pid = json['pid'];
    filterAttr = json['filter_attr'];
    link = json['link'];
    subTitle = json['sub_title'];
    description = json['description'];
    url = json['url'];
    fileName = json['file_name'];
    iV = json['__v'];
    if (json['items'] != null) {
      items = new List<Items>();
      json['items'].forEach((v) {
        items.add(new Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['sort'] = this.sort;
    data['status'] = this.status;
    data['add_time'] = this.addTime;
    data['title'] = this.title;
    data['pid'] = this.pid;
    data['filter_attr'] = this.filterAttr;
    data['link'] = this.link;
    data['sub_title'] = this.subTitle;
    data['description'] = this.description;
    data['url'] = this.url;
    data['file_name'] = this.fileName;
    data['__v'] = this.iV;
    if (this.items != null) {
      data['items'] = this.items.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  String sId;
  int sort;
  int status;
  int addTime;
  String title;
  String pid;
  String filterAttr;
  String link;
  String subTitle;
  String description;
  String url;
  String fileName;
  int iV;

  Items(
      {required this.sId,
      required this.sort,
      required this.status,
      required this.addTime,
      required this.title,
      required this.pid,
      required this.filterAttr,
      required this.link,
      required this.subTitle,
      required this.description,
      required this.url,
      required this.fileName,
      required this.iV});

  Items.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    sort = json['sort'];
    status = json['status'];
    addTime = json['add_time'];
    title = json['title'];
    pid = json['pid'];
    filterAttr = json['filter_attr'];
    link = json['link'];
    subTitle = json['sub_title'];
    description = json['description'];
    url = json['url'];
    fileName = json['file_name'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['sort'] = this.sort;
    data['status'] = this.status;
    data['add_time'] = this.addTime;
    data['title'] = this.title;
    data['pid'] = this.pid;
    data['filter_attr'] = this.filterAttr;
    data['link'] = this.link;
    data['sub_title'] = this.subTitle;
    data['description'] = this.description;
    data['url'] = this.url;
    data['file_name'] = this.fileName;
    data['__v'] = this.iV;
    return data;
  }
}
