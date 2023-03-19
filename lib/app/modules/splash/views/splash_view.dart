import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Flexible(
          flex: 3,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/weather-icon.webp'),
                      fit: BoxFit.contain),
                )),
          ),
        ),
        const Flexible(
          flex: 2,
          child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: Text(
                  'Weather',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                ),
              )),
        ),
      ],
    ));
  }
}
