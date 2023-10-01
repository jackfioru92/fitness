import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Constants/images.dart';
import 'package:fitness/Controller/auth_controller.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:fitness/Widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class HowActiveScreen extends StatelessWidget {
  final List<Map> activeList = [
    {
      'image': Images.activityImage1,
      "text": "Little or No Activity",
      "subText": "Mostly sitting through the day (eg. Desk Job Bank Teller)"
    },
    {
      'image': Images.activityImage2,
      "text": "Little Activity",
      "subText":
          "Mostly standing through the day (eg. Sales Associate, Teacher)"
    },
    {
      'image': Images.activityImage3,
      "text" : "Moderately Active",
      "subText":
          "Mostly walking or doing ohysical activities through the day (eg. Tour Guide, water)"
    },
    {
      'image': Images.activityImage4,
      "text" : "Very Activity",
      "subText":
          "Mostly doing heavy physical activities the day (eg. Gym Instruction, Construction Worker)"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            TextWidget.poppinsRegularText(
              text: "How active are you?",
              color: white,
              fontSize: 18,
            ),
            SizedBox(
              height: 10,
            ),
            TextWidget.poppinsRegularText(
              text:
                  "Based on your Lifestyle, we can assess your daily calorie requirements.",
              color: white,
              fontSize: 14,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            ScrollConfiguration(
              behavior: MyBehavior(),
              child: ListView.builder(
                itemCount: activeList.length,
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: GetBuilder<FillDetailController>(
                    init: FillDetailController(),
                    builder: (controller) => InkWell(
                      onTap: (){
                        controller.onIndexChange2(index);
                      },
                      child: Container(
                        width: Get.width,
                        decoration: BoxDecoration(
                          color: black2A2A,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: controller.selectedIndex2==index?appThemeColor:Colors.transparent,width: 1)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              SvgPicture.asset(activeList[index]["image"]),
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextWidget.poppinsRegularText(
                                      text: activeList[index]["text"],
                                      color: white,
                                      fontSize: 14
                                    ),
                                    TextWidget.poppinsLightText(
                                      text: activeList[index]['subText'],
                                      color: grey9D9D,
                                      fontSize: 10
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
