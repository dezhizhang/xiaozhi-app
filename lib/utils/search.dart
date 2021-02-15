

import 'dart:convert';
import './storage.dart';

class SearchStorage {
  //设置缓存
  static setSearch(value) async{
    try {
      var searchList = json.decode(await Storage.getString("searchList"));
      bool hasSearch = searchList.any((v) => v == value);
      if(!hasSearch) {
        searchList.add(value);
      }
      await Storage.setString('searchList', json.encode(searchList));
    } catch(e) {
      print(value);
      var tempList = new List();
      tempList.add(value);
      await Storage.setString('searchList', json.encode(tempList));
    }
  }
  //获取缓存
  static getSearch() async {
    try{
      List searchList = json.decode(await Storage.getString('searchList'));
      return searchList;
    }catch(e) {
      return [];
    }
  }
}