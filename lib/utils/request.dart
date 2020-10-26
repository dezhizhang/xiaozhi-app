
import 'package:dio/dio.dart';


class Request{
  get(url,params) async{
   return await Dio().get(url, queryParameters: params);
  } 
  post(url,parms) async{
    return  await Dio().post(url, data:parms);
  }
  download(url,parms) async {
     await Dio().download(url, parms);
  }
}