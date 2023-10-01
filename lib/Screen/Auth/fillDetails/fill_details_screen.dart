import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Controller/auth_controller.dart';
import 'package:fitness/Screen/Auth/fillDetails/gender_screen.dart';
import 'package:fitness/Screen/Auth/fillDetails/how_active_screen.dart';
import 'package:fitness/Screen/Auth/fillDetails/how_tall_screen.dart';
import 'package:fitness/Screen/Auth/fillDetails/medical_condition_screen.dart';
import 'package:fitness/Screen/Auth/fillDetails/whats_your_age_screen.dart';
import 'package:fitness/Screen/Auth/fillDetails/whats_your_name_screen.dart';
import 'package:fitness/Screen/Auth/fillDetails/whats_your_target_screen.dart';
import 'package:fitness/Screen/Auth/fillDetails/whtas_your_weight_screen.dart';
import 'package:fitness/Screen/BottomNavigation/bottom_navigation_screen.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FillDetailsScreen extends StatelessWidget {
  final PageController pageController = PageController(initialPage: 0);
  final FillDetailController fillDetailController =
      Get.put(FillDetailController());
  final List screenList = [
    WhatsYourNameScreen(),
    GenderScreen(),
    WhatsYourAgeScreen(),
    HowActiveScreen(),
    HowTallScreen(),
    WhatsYourWeightScreen(),
    WhatsYourTargetScreen(),
    MedicalConditionScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackF1F1,
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < screenList.length; i++)
                  Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Container(
                        height: 6,
                        width: 25,
                        decoration: BoxDecoration(
                            color: i == fillDetailController.onPageIndex.value
                                ? appThemeColor
                                : black3434,
                            borderRadius: BorderRadius.circular(5))),
                  )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: PageView.builder(
                controller: pageController,
                physics: NeverScrollableScrollPhysics(),
                itemCount: screenList.length,
                onPageChanged: (i) {
                  fillDetailController.onPageIndex.value = i;
                },
                itemBuilder: (context, index) => screenList[index]),
          ),
          Container(
            height: 90,
            width: Get.width,
            decoration: BoxDecoration(color: blackF1F1, boxShadow: [
              BoxShadow(color: black2A2A.withOpacity(0.80), blurRadius: 10)
            ]),
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Obx(
                ()=> Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    fillDetailController.onPageIndex.value==0?Container():InkWell(
                      onTap: () {
                        pageController.previousPage(
                            duration: 300.milliseconds, curve: Curves.ease);
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.arrow_back,
                            color: white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          TextWidget.poppinsSemiBoldText(
                              text: "Back", color: white, fontSize: 18)
                        ],
                      ),
                    ),
                    GetBuilder<FillDetailController>(
                      init: FillDetailController(),
                      builder: (controller) => Obx(
                        () => InkWell(
                          onTap: () {
                            if(fillDetailController.onPageIndex.value==7){
                              Get.to(BottomNavigationScreen());
                            }
                            if (fillDetailController.onPageIndex.value == 1 &&
                                controller.selectedIndex != null) {
                              pageController.nextPage(
                                  duration: 300.milliseconds, curve: Curves.ease);
                            } else if (fillDetailController.onPageIndex.value ==
                                    3 &&
                                controller.selectedIndex2 != null) {
                              pageController.nextPage(
                                  duration: 300.milliseconds, curve: Curves.ease);
                            } else if (fillDetailController.onPageIndex.value !=
                                    1 &&
                                fillDetailController.onPageIndex.value != 3) {
                              pageController.nextPage(
                                  duration: 300.milliseconds, curve: Curves.ease);
                            } else {}
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextWidget.poppinsSemiBoldText(
                                  text: "Next",
                                  color: fillDetailController.onPageIndex.value ==
                                              1 &&
                                          controller.selectedIndex != null
                                      ? appThemeColor
                                      : fillDetailController.onPageIndex.value ==
                                                  3 &&
                                              controller.selectedIndex2 != null
                                          ? appThemeColor
                                          : fillDetailController
                                                          .onPageIndex.value !=
                                                      1 &&
                                                  fillDetailController
                                                          .onPageIndex.value !=
                                                      3
                                              ? appThemeColor
                                              : grey7070,
                                  fontSize: 18),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: fillDetailController.onPageIndex.value ==
                                            1 &&
                                        controller.selectedIndex != null
                                    ? appThemeColor
                                    : fillDetailController.onPageIndex.value ==
                                                3 &&
                                            controller.selectedIndex2 != null
                                        ? appThemeColor
                                        : fillDetailController
                                                        .onPageIndex.value !=
                                                    1 &&
                                                fillDetailController
                                                        .onPageIndex.value !=
                                                    3
                                            ? appThemeColor
                                            : grey7070,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
