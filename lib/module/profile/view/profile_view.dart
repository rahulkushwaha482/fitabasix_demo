import 'package:fitabix_demo_app/constant/app_theme.dart';
import 'package:fitabix_demo_app/module/profile/controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppTheme.kLightBlack,
      body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
        fit: StackFit.loose,
        clipBehavior: Clip.none,
        children: [
              SizedBox(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/images/exercise.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: controller.getBack,
                      child: Container(
                          decoration: const BoxDecoration(
                              color: AppTheme.kWhite,
                              borderRadius: BorderRadius.all(Radius.circular(20))),
                          height: 40,
                          width: 40,
                          child: const Icon(
                            Icons.arrow_back_ios_outlined,
                            color: AppTheme.kBlack,
                            size: 20,
                          )),
                    ),
                    Container(
                        decoration: const BoxDecoration(
                            color: AppTheme.kLightBlack,
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                        height: 40,
                        width: 40,
                        child: const Icon(
                          Icons.camera_alt_rounded,
                          color: AppTheme.kWhite,
                          size: 20,
                        )),
                  ],
                ),
              ),
              Positioned(
                bottom: -50,
                left: 15,
                child: Hero(
                    tag: "profile_image",
                    child: Container(
                        decoration:  BoxDecoration(
                            color: AppTheme.kDarkWhite,
                            border: Border.all(
                              width: 4,
                              color: AppTheme.kWhite,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(50))),
                        height: 100,
                        width: 100,
                        child: const Icon(Icons.perm_identity_outlined))),
              ),

        ],
      ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Vector Lai',
                    style: TextStyle(
                      fontSize: 18,
                        color: AppTheme.kWhite
                    ),
                  ),
                ],
              ),
            ],
          )),
    ));
  }
}
