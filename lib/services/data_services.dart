import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:trave_log/models/data_model.dart';

class DataServices {
  final String baseurl="http://mark.bslmeiyu.com/api";
  Future<List<DataModel>> getPlaces()async{
    String apiurl="/getplaces";
    http.Response res = await http.get(Uri.parse(baseurl + apiurl));
    try
    {
      if (res.statusCode == 200) {
        List<dynamic> list=jsonDecode(res.body);
        return list.map((e) => DataModel.fromJson(e)).toList();
      }
      else
        return <DataModel>[];
    }
    catch(e){
      return <DataModel>[];
    }
  }
}