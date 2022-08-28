import 'dart:async';
import 'package:fitabix_demo_app/constant/app_theme.dart';
import 'package:fitabix_demo_app/routes/app_pages.dart';
import 'package:fitabix_demo_app/services/api_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'constant/app_error.dart';
import 'constant/app_string.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put<ApiHelper>(
    ApiHelper(),
  );

  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );
  runZonedGuarded<Future<void>>(
        () async {
      runApp(
        GetMaterialApp(
          title: cAppTitle,
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
          debugShowCheckedModeBanner: false,
        ),
      );
    },
        (dynamic error, StackTrace stackTrace) {
      print('<<----------ERROR--------->> \n$error');
      print('<<----------STACK TRACE--------->> \n$stackTrace');
      Get.defaultDialog(
        title: cUnknownError,
        titleStyle: Get.textTheme.headline3,
        middleText: cUnknownErrorDetails,
        middleTextStyle: Get.textTheme.headline6,
        textConfirm: cGoBack.toUpperCase(),
        confirmTextColor: AppTheme.kWhite,
        radius: 5,
        buttonColor: AppTheme.kDarkBlue,
        onConfirm: () {
          Get.back();
          },
      );
    },
  );
}
