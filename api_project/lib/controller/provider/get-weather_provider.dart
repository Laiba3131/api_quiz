import 'dart:js';

import 'package:flutter/material.dart';

import '../../model/getweather_model.dart';
import '../services/api_manager.dart';

class GetWeatherProvider extends ChangeNotifier{
   bool loading = false;

   
  GetWeatherModel? weather_info;

  getweatherinfo() async {
    loading = true;
    notifyListeners();
    weather_info = await ApiManager.getWeatherData();
    loading= false;
    notifyListeners();
  }

}