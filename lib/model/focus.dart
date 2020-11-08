/**
 * @author:zhangdezhi
 * @date:2020-11-08
 * @descc:轮播图模型
*/

class FocusModel {
  int code;
  String msg;
  List<FocusModelItem> data;

  FocusModel({this.code, this.msg, this.data});

  FocusModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    msg = json['msg'];
    if (json['data'] != null) {
      data = new List<FocusModelItem>();
      json['data'].forEach((v) {
        data.add(new FocusModelItem.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['msg'] = this.msg;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class FocusModelItem {
  int status;
  int addTime;
  String sId;
  int type;
  String title;
  String link;
  int sort;
  String url;
  String fileName;
  int iV;

  FocusModelItem(
      {this.status,
      this.addTime,
      this.sId,
      this.type,
      this.title,
      this.link,
      this.sort,
      this.url,
      this.fileName,
      this.iV});

  FocusModelItem.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    addTime = json['add_time'];
    sId = json['_id'];
    type = json['type'];
    title = json['title'];
    link = json['link'];
    sort = json['sort'];
    url = json['url'];
    fileName = json['file_name'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['add_time'] = this.addTime;
    data['_id'] = this.sId;
    data['type'] = this.type;
    data['title'] = this.title;
    data['link'] = this.link;
    data['sort'] = this.sort;
    data['url'] = this.url;
    data['file_name'] = this.fileName;
    data['__v'] = this.iV;
    return data;
  }
}