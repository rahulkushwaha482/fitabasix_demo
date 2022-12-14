import 'package:fitabix_demo_app/constant/app_string.dart';
import 'package:fitabix_demo_app/utils/my_painter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import '../../../constant/app_theme.dart';
import '../controller/home_controller.dart';

class HomeView extends GetView<HomeController> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData somTheme = new ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.black,
        backgroundColor: Colors.grey
    );
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppTheme.kBlack,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green[700],
        unselectedItemColor: AppTheme.kLightBlack,
        unselectedLabelStyle: const TextStyle(color: AppTheme.kWhite),
        selectedFontSize: 13,
        unselectedFontSize: 13,
        iconSize: 30,
        items: const [
          BottomNavigationBarItem(
            label: cHome,
            icon: Icon(
              Icons.home,
              color: AppTheme.kDarkGrey,
            ),
          ),
          BottomNavigationBarItem(
            label: cGetTrained,
            icon: Icon(
              Icons.message,
              color: AppTheme.kDarkGrey,
            ),
          ),
          BottomNavigationBarItem(
            label: cPost,
            icon: Icon(
              Icons.add,
              color: AppTheme.kDarkGrey,
            ),
          ),
          BottomNavigationBarItem(
            label: cTools,
            icon: Icon(
              Icons.today_outlined,
              color: AppTheme.kDarkGrey,
            ),
          ),
          BottomNavigationBarItem(
            label: cMore,
            icon: Icon(
              Icons.more_horiz_sharp,
              color: AppTheme.kDarkGrey,
            ),
          ),
        ],
      ),
      backgroundColor: AppTheme.kLightBlack,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap:controller.onProfileClick,
                    child: Hero(
                      tag: "profile_image",
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Container(
                          height: 60,
                          width: 60,
                          color: Colors.white,
                          child: const Icon(Icons.perm_identity_outlined),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        cVikerLaiWelcome,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        cLetKeepMomentumGoing,
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.notification_important_rounded,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Container(
              width: MediaQuery.of(context).size.width,
              color: AppTheme.kDarkGrey,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      child: Text(
                        cGetAlotMessage,
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          cTakeDemo,
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        onPrimary: Colors.white,
                        onSurface: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Today',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  Text(
                    '12 April',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Card(
                        color: AppTheme.kDarkGrey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          height: 250,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: SizedBox(
                                width: 40,
                                child: LiquidLinearProgressIndicator(
                                  value: 0.15, // Defaults to 0.5.
                                  valueColor: AlwaysStoppedAnimation(Colors.grey), // Defaults to the current Theme's accentColor.
                                  backgroundColor: Colors.white, // Defaults to the current Theme's backgroundColor.
                                  borderColor: Colors.black,
                                  borderWidth: 2.0,
                                  direction: Axis.vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Card(
                        color: AppTheme.kDarkGrey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          height: 250,
                          child: Center(
                            child:   CustomPaint(
                              painter: MyPainter(

                              ),
                              child: SizedBox(
                                height: 200,
                                width: 40,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Card(
                  color: AppTheme.kDarkGrey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    height: 150,
                    child: Text('sf'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
