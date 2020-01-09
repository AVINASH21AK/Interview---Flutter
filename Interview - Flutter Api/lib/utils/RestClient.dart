import 'dart:async';

import 'package:dio/dio.dart';


class RestClient{
  static var dio = new Dio();

  static Future<Response> postData(String endpoint,String  data) async{
     Response response =  await dio.post(endpoint,data: data);
     return response;     
   }

   static Future<Response> getData(String endpoint) async{
     Response response =  await dio.get(endpoint);
     return response;     
   }

}