import 'package:api_project/controller/provider/get-weather_provider.dart';
import 'package:api_project/model/getweather_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
     ChangeNotifierProvider(create: (context)=> GetWeatherProvider()),
    ] , 
    child:  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ));
    
  }
}
