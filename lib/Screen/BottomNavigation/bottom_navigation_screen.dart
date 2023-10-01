import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Constants/images.dart';
import 'package:fitness/Controller/bottom_navigation_controller.dart';
import 'package:fitness/Screen/DietTips/diet_tips_screen.dart';
import 'package:fitness/Screen/Favourite/favourite_screen.dart';
import 'package:fitness/Screen/Home/home_screen.dart';
import 'package:fitness/Screen/MyPlan/my_plan_screen.dart';
import 'package:fitness/Screen/Profile/profile_screen.dart';
import 'package:fitness/Screen/WorkoutLibrary/workout_library_screen.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:fitness/Widgets/common_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class BottomNavigationScreen extends StatelessWidget {
  final BottomNavigationController bottomNavigationController =
      Get.put(BottomNavigationController());
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final pages = [
    HomeScreen(),
    MyPlanScreen(),
    DietTipsScreen(),
    ProfileScreen()
  ];

  buildMyNavBar(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        color: black2A2A,
      ),
      padding: EdgeInsets.only(left: 10, right: 10, top: 13),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Obx(
            () => SizedBox(
              height: 70,
              width: 70,
              child: InkWell(
                onTap: () {
                  bottomNavigationController.pageIndex.value = 0;
                },
                child: Column(
                  children: [
                    SvgPicture.asset(
                      Images.workoutIcon,
                      color: bottomNavigationController.pageIndex.value == 0
                          ? appThemeColor
                          : white,
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    TextWidget.poppinsRegularText(
                        text: "Workouts",
                        color: bottomNavigationController.pageIndex.value == 0
                            ? appThemeColor
                            : white,
                        fontSize: 12)
                  ],
                ),
              ),
            ),
          ),
          Obx(
            () => SizedBox(
              height: 70,
              width: 70,
              child: InkWell(
                onTap: () {
                  bottomNavigationController.pageIndex.value = 1;
                },
                child: Column(
                  children: [
                    SvgPicture.asset(
                      Images.myPlanImage,
                      color: bottomNavigationController.pageIndex.value == 1
                          ? appThemeColor
                          : white,
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    TextWidget.poppinsRegularText(
                        text: "My Plan",
                        color: bottomNavigationController.pageIndex.value == 1
                            ? appThemeColor
                            : white,
                        fontSize: 12)
                  ],
                ),
              ),
            ),
          ),
          Obx(
            () => SizedBox(
              height: 70,
              width: 70,
              child: InkWell(
                onTap: () {
                  bottomNavigationController.pageIndex.value = 2;
                },
                child: Column(
                  children: [
                    SvgPicture.asset(
                      Images.dietIcon,
                      color: bottomNavigationController.pageIndex.value == 2
                          ? appThemeColor
                          : white,
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    TextWidget.poppinsRegularText(
                        text: "Diet Tips",
                        color: bottomNavigationController.pageIndex.value == 2
                            ? appThemeColor
                            : white,
                        fontSize: 12)
                  ],
                ),
              ),
            ),
          ),
          Obx(
            () => SizedBox(
              height: 70,
              width: 70,
              child: InkWell(
                onTap: () {
                  bottomNavigationController.pageIndex.value = 3;
                },
                child: Column(
                  children: [
                    SvgPicture.asset(
                      Images.profileIcon,
                      color: bottomNavigationController.pageIndex.value == 3
                          ? appThemeColor
                          : white,
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    TextWidget.poppinsRegularText(
                        text: "Profile",
                        color: bottomNavigationController.pageIndex.value == 3
                            ? appThemeColor
                            : white,
                        fontSize: 12)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: drawerView(),
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            _key.currentState!.openDrawer();
          },
            child: Icon(Icons.menu, color: white),
        ),
        backgroundColor: black2A2A,
        centerTitle: true,
        title: Obx(
          () => TextWidget.poppinsBoldText(
              color: white,
              fontSize: 17,
              text: bottomNavigationController.pageIndex.value == 0
                  ? "Workouts"
                  : bottomNavigationController.pageIndex.value == 1
                      ? "My Plan"
                      : bottomNavigationController.pageIndex.value == 2
                          ? "Diet Tips"
                          : "Profile"),
        ),
        actions: [
          Obx(
            () => bottomNavigationController.pageIndex.value == 3
                ? Container()
                : Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Get.to(FavouriteScreen());
                        },
                        child: Icon(
                          Icons.favorite_border,
                          color: white,
                          size: 25,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: (){
                          Get.to(WorkoutLibraryScreen());
                        },
                        child: Icon(
                          CupertinoIcons.search,
                          color: white,
                          size: 25,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      )
                    ],
                  ),
          )
        ],
      ),
      body: Obx(
        () => Stack(
          alignment: Alignment.bottomCenter,
          children: [
            pages[bottomNavigationController.pageIndex.value],
            buildMyNavBar(context),
          ],
        ),
      ),
    );
  }
}
