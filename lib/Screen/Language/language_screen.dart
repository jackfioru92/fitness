import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Controller/bottom_navigation_controller.dart';
import 'package:fitness/Controller/language_controller.dart';
import 'package:fitness/Screen/BottomNavigation/bottom_navigation_screen.dart';
import 'package:fitness/Widgets/common_appbar.dart';
import 'package:fitness/Widgets/common_button.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:fitness/Widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageScreen extends StatelessWidget {
  final LanguageController languageController = Get.put(LanguageController());
  final BottomNavigationController bottomNavigationController = Get.put(BottomNavigationController());

  final List suggestedLanguageList = ["English (US)", "English (UK)"];

  final List languageList = [
    "Mandarin",
    "Hindi",
    "Spanish",
    "French",
    "Arabic",
    "Bengali",
    "Russian",
    "Indonesia",
    "Japanese",
    "Ukrainian",
    "Romanian",
    "Nepali",
    "Greek",
    "Zulu",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackF1F1,
      appBar: CommonAppBar.appBarWithBackArrow(text: "Language"),
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget.poppinsSemiBoldText(
                    text: "Suggested", color: white, fontSize: 15),
                SizedBox(
                  height: 20,
                ),
                suggestedList(list: suggestedLanguageList),
                Divider(
                  color: black4343,
                ),
                SizedBox(
                  height: 10,
                ),
                TextWidget.poppinsSemiBoldText(
                    text: "Language", color: white, fontSize: 15),
                SizedBox(
                  height: 20,
                ),
                languageListWidget(),
                SizedBox(
                  height: 30,
                ),
                CommonButton(
                  onTap: (){
                    bottomNavigationController.pageIndex.value=3;
                    Get.offAll(BottomNavigationScreen());
                  },
                  text: "Save",
                ),
                SizedBox(
                  height: 35,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  suggestedList({list}) {
    return ListView.builder(
      itemCount: list.length,
      padding: EdgeInsets.zero,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 15.0),
        child: Obx(
          () => InkWell(
            onTap: () {
              languageController.selectedIndex.value = index;
            },
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 50,
              width: Get.width,
              decoration: BoxDecoration(
                  color: black2A2A, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget.poppinsMediumText(
                        text: list[index], color: greyB7B7, fontSize: 14),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: languageController.selectedIndex.value ==
                                      index
                                  ? appThemeColor
                                  : greyB7B7)),
                      alignment: Alignment.center,
                      child: languageController.selectedIndex.value == index
                          ? Container(
                              height: 9,
                              width: 9,
                              decoration: BoxDecoration(
                                  color: appThemeColor, shape: BoxShape.circle),
                            )
                          : SizedBox.shrink(),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  languageListWidget(){
    return ListView.builder(
      itemCount: languageList.length,
      padding: EdgeInsets.zero,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 15.0),
        child: GetBuilder<LanguageController>(
          init: LanguageController(),
          builder: (controller) => InkWell(
            onTap: () {
              controller.onIndexChange(index);
            },
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 50,
              width: Get.width,
              decoration: BoxDecoration(
                  color: black2A2A,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget.poppinsMediumText(
                        text: languageList[index],
                        color: greyB7B7,
                        fontSize: 14),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color:
                              controller.selectedIndex2 ==
                                  index
                                  ? appThemeColor
                                  : greyB7B7)),
                      alignment: Alignment.center,
                      child: controller.selectedIndex2 == index
                          ? Container(
                        height: 9,
                        width: 9,
                        decoration: BoxDecoration(
                            color: appThemeColor,
                            shape: BoxShape.circle),
                      )
                          : SizedBox.shrink(),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
