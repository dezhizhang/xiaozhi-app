
class FocusModel{
  String sId;
  String title;
  String link;
  String url;
  String fileName;
  String addTime;
  int type;
  int sort;
  int status;
  FocusModel({this.sId,this.title,this.link,this.url,this.fileName,this.addTime,this.type,this.sort,this.status});

  FocusModel.formJson(Map json) {
    this.sId = json['_id'];
    this.title = json['title'];
    this.link = json['link'];
    this.url = json['url'];
    this.fileName = json['file_name'];
    this.addTime = json['add_time'];
    this.type = json['type'];
    this.sort = json['sort'];
    this.status = json['status'];
  }
}