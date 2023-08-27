import 'package:api_project/controller/provider/get-weather_provider.dart';
import 'package:api_project/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void initState() {
    getweather();
    super.initState();
  }

  getweather() {
    var provider = context.read<GetWeatherProvider>();
    provider.getweatherinfo();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(
                "https://cdn.pixabay.com/photo/2023/08/18/11/35/frog-8198313_1280.jpg"),
            fit: BoxFit.cover,
          )),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(children: [
              // var pro = context.watch<GetWeatherProvider>();
              Builder(builder: (context) {
                var pro = context.watch<GetWeatherProvider>();
                return pro.loading
                    ? Center(
                        child: CircularProgressIndicator.adaptive(),
                      )
                    : Text(
                        pro.weather_info!.name!,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold, fontFamily: 'Poppins-Light'),
                      );
              }),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Builder(builder: (context) {
                    var pro = context.watch<GetWeatherProvider>();
                    var temp =
                        ((pro.weather_info!.main!.temp!) - 273.15).toInt();
                    return pro.loading
                        ? Center(
                            child: CircularProgressIndicator.adaptive(),
                          )
                        : Text(
                            '$temp\u00B0',
                            style: TextStyle(
                                fontSize: 65,
                                color: Colors.white,
                                fontWeight: FontWeight.bold, fontFamily: 'Poppins-Light'),
                          );
                  }),
                  Builder(builder: (context) {
                    var pro = context.watch<GetWeatherProvider>();
                    return pro.loading
                        ? Center(
                            child: CircularProgressIndicator.adaptive(),
                          )
                        : Text(
                            pro.weather_info!.weather![0].description!,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold, fontFamily: 'Poppins-Light'),
                          );
                  })
                ],
              ),

              Spacer(),
              Container(
                height: 120,
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Builder(builder: (context) {
                          var pro = context.watch<GetWeatherProvider>();
                          return pro.loading
                              ? Center(
                                  child: CircularProgressIndicator.adaptive(),
                                )
                              : CustomText(
                                  pro.weather_info!.weather![0].main!,
                                );
                        }),
                       Builder(builder: (context) {
                          var pro = context.watch<GetWeatherProvider>();
                          return pro.loading
                              ? Center(
                                  child: CircularProgressIndicator.adaptive(),
                                )
                              : CustomText(
                                  pro.weather_info!.coord!.lat!.toString(),
                                );
                        }),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Builder(builder: (context) {
                          var pro = context.watch<GetWeatherProvider>();
                          return pro.loading
                              ? Center(
                                  child: CircularProgressIndicator.adaptive(),
                                )
                              : CustomText(
                                   pro.weather_info!.weather![0].main!,
                                );
                        }),
                        Builder(builder: (context) {
                          var pro = context.watch<GetWeatherProvider>();
                          return pro.loading
                              ? Center(
                                  child: CircularProgressIndicator.adaptive(),
                                )
                              : CustomText(
                                 pro.weather_info!.coord!.lon!.toString(),
                                );
                        }),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Builder(builder: (context) {
                          var pro = context.watch<GetWeatherProvider>();
                          return pro.loading
                              ? Center(
                                  child: CircularProgressIndicator.adaptive(),
                                )
                              : CustomText(
                                 pro.weather_info!.weather![0].main!,
                                );
                        }),
                        Builder(builder: (context) {
                          var pro = context.watch<GetWeatherProvider>();
                          return pro.loading
                              ? Center(
                                  child: CircularProgressIndicator.adaptive(),
                                )
                              : CustomText(
                                  pro.weather_info!.coord!.lat!.toString(),
                                );
                        }),
                      ],
                    ),
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
