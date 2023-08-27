import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

import 'controller/provider/get-weather_provider.dart';

class CustomText extends StatelessWidget {
  String ch;
 CustomText(this.ch);

  @override
  Widget build(BuildContext context) {
    return Text(    
                          // pro.weather_info!.coord!.toString()
                          ch,
                       
                            style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold, fontFamily: 'Poppins-Light'),
                          );
                  ;
  }
}