import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Constants/images.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';

class WhatsYourDietPreferenceScreen extends StatelessWidget {
  final List<Map> dietPreferenceList = [
    {
      "image": Images.dietPreferenceImage1,
      "text": "Non Vegetarian",
      "subText": "Chicken, Red Meat, Fish, Prawns etc"
    },
    {
      "image": Images.dietPreferenceImage2,
      "text": "vegetarian",
      "subText": "Vegetarian - no egg as well"
    },
    {
      "image": Images.dietPreferneceImage3,
      "text": "Non Vegetarian",
      "subText": "Vegetarian with egg dishes"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextWidget.poppinsMediumText(
            text: "What is Your Dietary Preference?",
            color: white,
            fontSize: 18
          ),
          SizedBox(
            height: 10,
          ),
          TextWidget.poppinsRegularText(
            color: grey6C6C,
            text: "Your diet will inclide foods based in this.",
            fontSize: 12
          ),
          SizedBox(
            height: 30,
          ),
          ListView.builder(
            itemCount: dietPreferenceList.length,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 20),
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: Container(
                height: 70,
                width: Get.width,
                decoration: BoxDecoration(
                  color: black2A2A,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: [
                      SvgPicture.asset(dietPreferenceList[index]["image"]),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget.poppinsMediumText(
                            text: dietPreferenceList[index]["text"],
                            color: white,
                            fontSize: 14
                          ),
                          TextWidget.poppinsRegularText(
                              text: dietPreferenceList[index]["subText"],
                              color: grey6C6C,
                              fontSize: 12
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
