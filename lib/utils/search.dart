

import 'dart:convert';
import './storage.dart';

class Search {
  static setSearch(value) async{
    var searchList = [];
    try {
      searchList = json.decode(await Storage.getString("searchList"));
    } catch(e) {
      List tempList = new List();
      tempList.add(value);
      await Storage.setString('searchList', json.encode(tempList));
    }
  }
}