

import 'dart:convert';
import './storage.dart';

class Search {
  static setSearch(value) async{
    var searchList = json.decode(await Storage.getString("searchList"));

  }
}