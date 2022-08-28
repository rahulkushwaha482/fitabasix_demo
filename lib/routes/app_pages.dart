
import 'package:get/get.dart';
import '../module/home/binding/home_binding.dart';
import '../module/home/view/home_view.dart';
import '../module/splash/binding/splash_binding.dart';
import '../module/splash/view/splash_view.dart';
part 'app_routes.dart';

class AppPages{

  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [

    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
  ];

}