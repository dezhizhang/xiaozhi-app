/*
 * :file description: 
 * :name: /xiaozhi/lib/utils/search.dart
 * :author: 张德志
 * :copyright: (c) 2021, Tungee
 * :date created: 2021-05-28 17:52:05
 * :last editor: 张德志
 * :date last edited: 2021-06-13 22:58:17
 */
import 'dart:convert';
import './storage.dart';

class SearchStorage {
  //设置缓存
  static setSearch(value) async {
    try {
      var searchList = json.decode(await Storage.getString("searchList"));
      bool hasSearch = searchList.any((v) => v == value);
      if (!hasSearch) {
        searchList.add(value);
      }
      await Storage.setString('searchList', json.encode(searchList));
    } catch (e) {
      var tempList = [];
      tempList.add(value);
      await Storage.setString('searchList', json.encode(tempList));
    }
  }

  //获取缓存
  static getSearch() async {
    try {
      var searchList = json.decode(await Storage.getString('searchList'));
      return searchList;
    } catch (e) {
      return [];
    }
  }
}
