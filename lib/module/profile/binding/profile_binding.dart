

import 'package:fitabix_demo_app/module/profile/controller/profile_controller.dart';
import 'package:get/get.dart';

class ProfileBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(
          () => ProfileController(),
    );
  }
}