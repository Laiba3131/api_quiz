import 'dart:convert';
import 'dart:developer';
import 'dart:js';

import '../../model/getweather_model.dart';
import '../../utils/utils.dart';
import 'package:http/http.dart' as http;


class ApiManager{
  // static get http => null;

  static getWeatherData() async
  {
    try{
      var Url = Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=Lahore&appid=b189f31bd264510e4848acac84074ab4');
      var response = await http.get(Url);
       var res = jsonDecode(response.body);
       var tem= GetWeatherModel.fromJson(res);
       //debugger();
        return tem;
    } catch(e)
    {
         showSnackBar(context, e.toString());
    }
  }
}