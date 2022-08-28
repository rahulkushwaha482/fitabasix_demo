import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../model/age_response.dart';
import '../../../routes/app_pages.dart';
import '../../../services/api_helper.dart';

class HomeController extends GetxController {
  late TextEditingController nameController;
  final _apiHelper = Get.find<ApiHelper>();
  Rx<AgeResponse> ageDetails = AgeResponse().obs;

  @override
  void onInit() {
    super.onInit();
    nameController = TextEditingController();
  }

  @override
  void onClose() {
    nameController.dispose();
    super.onClose();
  }

  void submit() {
    print('asdasdas');
  }

  void onProfileClick() {
    Get.toNamed(Routes.PROFILE);
  }
}
