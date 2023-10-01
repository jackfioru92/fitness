import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Constants/images.dart';
import 'package:fitness/Controller/bottom_navigation_controller.dart';
import 'package:fitness/Screen/BottomNavigation/bottom_navigation_screen.dart';
import 'package:fitness/Screen/DietTips/diet_preference_screen.dart';
import 'package:fitness/Screen/DietTips/my_meal_screen.dart';
import 'package:fitness/Screen/DietTips/recipe_screen.dart';
import 'package:fitness/Screen/DietTips/today_insights_screen.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:fitness/Widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ToDayDietTipScreen extends StatelessWidget {
  final BottomNavigationController bottomNavigationController = Get.put(BottomNavigationController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackF1F1,
      appBar: AppBar(
        backgroundColor: black2A2A,
        leading: InkWell(
          onTap: () async {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back,
            color: white,
          ),
        ),
        centerTitle: true,
        title: InkWell(
          onTap: (){
            Get.to(TodayInsightsScreen());
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextWidget.poppinsBoldText(text: "Today", fontSize: 17, color: white),
              Icon(Icons.arrow_drop_down,size: 30,color: white,)
            ],
          ),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
        child: Column(
          children: [
            ///top view
            topView(),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                commonContainer(image: Images.todayDietPlan,text: "My Diet Plan",onTap: (){
                  Get.to(DietPreferenceScreen());
                }),
                SizedBox(
                  width: 15,
                ),
                commonContainer(image: Images.todayRecipe,text: "Recipes",onTap: (){
                  Get.to(RecipeScreen());
                }),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: (){
                Get.to(MyMealScreen());
              },
              child: Container(
                height: 132,
                width: 160,
                decoration: BoxDecoration(
                    color: black2A2A,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(Images.todayMyMeal),
                    SizedBox(
                      height: 20,
                    ),
                    TextWidget.poppinsMediumText(
                        color: white,
                        text: "My Meals",
                        fontSize: 12
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: Get.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                children: [
                  Expanded(child: InkWell(
                    onTap: (){
                      Get.to(TodayInsightsScreen());
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                        color: black2A2A
                      ),
                      alignment: Alignment.center,
                      child: TextWidget.poppinsSemiBoldText(
                        text: "INSIGHTS",
                        color: white,
                        fontSize: 14
                      ),
                    ),
                  )),
                  Expanded(child: InkWell(
                    onTap: (){
                      bottomNavigationController.pageIndex.value = 0;
                      Get.offAll(BottomNavigationScreen());
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)),
                          color: white
                      ),
                      alignment: Alignment.center,
                      child: TextWidget.poppinsSemiBoldText(
                          text: "HOME",
                          color: black2A2A,
                          fontSize: 14
                      ),
                    ),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }


  ///top view
  Widget topView() {
    return InkWell(
      onTap: (){
        Get.to(ToDayDietTipScreen());
      },
      child: Container(
        width: Get.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: black2A2A),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SvgPicture.asset(Images.dietTipImage1),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      TextWidget.poppinsMediumText(
                          text: "0 of 1,600", color: white, fontSize: 14,
                      ),
                      TextWidget.poppinsMediumText(
                        text: "Cal Eatern",
                        color: greyA3A3,
                        fontSize: 12
                      )
                    ],
                  ),
                  Spacer(),
                  SvgPicture.asset(Images.barChart)
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Divider(
                  color: black3939,
                  thickness: 1,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget.poppinsMediumText(
                    text: "View your daily budget",
                    fontSize: 12,
                    color: white
                  ),
                  Icon(Icons.arrow_forward_ios,color: white,size: 20,)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }


}
