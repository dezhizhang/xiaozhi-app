

import 'dart:convert';
import './storage.dart';

class Search {
  static setSearch(value) async{
    try {
      List searchList = json.decode(await Storage.getString("searchList"));
      bool hasSearch = searchList.any((v) => v == value);
      if(!hasSearch) {
        searchList.add(value);
      }
    } catch(e) {
      List tempList = new List();
      tempList.add(value);
      await Storage.setString('searchList', json.encode(tempList));
    }
  }
}