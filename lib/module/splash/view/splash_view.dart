import 'package:fitabix_demo_app/constant/app_theme.dart';
import 'package:fitabix_demo_app/module/splash/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends GetView<SplashController>{
  @override
  Widget build(BuildContext context) {
    controller.onInit();
    return  SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.kLightBlack,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Text(
              'FitaBasix',
              style: TextStyle(
                fontSize: 24,
                color: Colors.lightGreen
              ),
            )
          ),
        ),
      ),
    );
  }


}