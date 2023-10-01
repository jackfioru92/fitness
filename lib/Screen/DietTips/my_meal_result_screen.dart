import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Constants/images.dart';
import 'package:fitness/Screen/DietTips/create_meal_screen.dart';
import 'package:fitness/Screen/DietTips/today_screen.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class MyMealResultScreen extends StatelessWidget {
  final bottomList = [
    "Breakfast",
    "Morning Snack",
    "Lunch",
    "Evening Snack",
    "Dinner",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackF1F1,
      appBar: AppBar(
        backgroundColor: black2A2A,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back, color: white)),
        title: TextWidget.poppinsBoldText(
            text: "My Meals", color: white, fontSize: 17),
        centerTitle: true,
        actions: [
          SvgPicture.asset(Images.refreshIcon),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.off(CreateMealScreen());
                  },
                  child: Icon(
                    Icons.add,
                    color: appThemeColor,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                TextWidget.poppinsRegularText(
                    text: " CREATE A MEAL", color: appThemeColor, fontSize: 14)
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Image.asset(
                  Images.eggImage4,
                  height: 50,
                  width: 50,
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget.poppinsRegularText(
                        text: "Boiled Egg", color: white, fontSize: 12),
                    SizedBox(
                      height: 5,
                    ),
                    TextWidget.poppinsMediumText(
                        color: grey9F9F, fontSize: 12, text: "77 Cal"),
                  ],
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    Get.bottomSheet(
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0,top: 20,bottom: 70,right: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                TextWidget.poppinsMediumText(
                                    text: "which meal would you like to track?",
                                    color: appThemeColor,
                                    fontSize: 14),
                                SizedBox(
                                  height: 27,
                                ),
                                ListView.builder(
                                  itemCount: bottomList.length,
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.only(bottom: 25.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        TextWidget.poppinsMediumText(
                                          text: bottomList[index],
                                          color: white,
                                          fontSize: 13
                                        ),
                                        InkWell(
                                          onTap: (){
                                            // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => TodayScreen(),));
                                            Get.off(TodayScreen());
                                          },
                                          child: Container(
                                            height: 25,
                                            width: 25,
                                            decoration: BoxDecoration(
                                              color: appThemeColor,
                                              shape: BoxShape.circle
                                            ),
                                            alignment: Alignment.center,
                                            child: Icon(Icons.arrow_forward,color: white,size: 20,),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        backgroundColor: black2A2A);
                  },
                  child: Icon(
                    Icons.add,
                    color: appThemeColor,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
