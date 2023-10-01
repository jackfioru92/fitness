import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Controller/diet_tip_controller.dart';
import 'package:fitness/Screen/DietTips/cuisines_include_screen.dart';
import 'package:fitness/Screen/DietTips/have_any_food_screen.dart';
import 'package:fitness/Screen/DietTips/sabzis_dal_screen.dart';
import 'package:fitness/Screen/DietTips/whats_your_diet_preference_screen.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DietPreferenceScreen extends StatelessWidget {
  final PageController pageController = PageController(initialPage: 0);
  final DietTipController dietTipController = Get.put(DietTipController());
  final List screenList = [
    WhatsYourDietPreferenceScreen(),
    HaveAnyFoodScreen(),
    CuisinesIncludeScreen()
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
                        width: 70,
                        decoration: BoxDecoration(
                            color: i == dietTipController.onPageIndex.value
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
                  dietTipController.onPageIndex.value = i;
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      if(dietTipController.onPageIndex.value==0){
                        Get.back();
                      }else{
                        pageController.previousPage(
                            duration: 300.milliseconds, curve: Curves.ease);
                      }

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
                  InkWell(
                    onTap: (){
                       if(dietTipController.onPageIndex.value==2){
                         Get.to(SabzisDalScreen());
                       }else{
                         pageController.nextPage(
                             duration: 300.milliseconds, curve: Curves.ease);
                       }
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextWidget.poppinsSemiBoldText(
                            text: "Next", color: appThemeColor, fontSize: 18),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: appThemeColor,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
