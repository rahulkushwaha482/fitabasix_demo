import 'package:fitabix_demo_app/constant/app_theme.dart';
import 'package:fitabix_demo_app/module/profile/controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constant/app_string.dart';

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
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15.0, top: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: controller.getBack,
                      child: Container(
                          decoration: const BoxDecoration(
                              color: AppTheme.kWhite,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
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
                        decoration: BoxDecoration(
                            color: AppTheme.kDarkWhite,
                            border: Border.all(
                              width: 4,
                              color: AppTheme.kWhite,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50))),
                        height: 100,
                        width: 100,
                        child: const Icon(Icons.perm_identity_outlined))),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                cName,
                style: TextStyle(fontSize: 18, color: AppTheme.kWhite),
              ),
            ],
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 65.0),
              child: ElevatedButton(
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    cEditProfile,
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: AppTheme.kDarkGrey,
                  onPrimary: Colors.white,
                  onSurface: Colors.grey,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      '0',
                      style: TextStyle(fontSize: 16, color: AppTheme.kWhite),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      cFollowers,
                      style: TextStyle(fontSize: 14, color: AppTheme.kWhite),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      '4',
                      style: TextStyle(fontSize: 14, color: AppTheme.kWhite),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      cFollowing,
                      style: TextStyle(fontSize: 14, color: AppTheme.kWhite),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  cAbout,
                  style: TextStyle(fontSize: 18, color: AppTheme.kWhite),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Expanded(
                  child: Text(
                    cAboutMessage,
                    style: TextStyle(fontSize: 16, color: AppTheme.kWhite),
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    ));
  }
}
