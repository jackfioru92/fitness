import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Constants/images.dart';
import 'package:fitness/Widgets/common_appbar.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:fitness/Widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class RecipeDescriptionScreen extends StatelessWidget {
  const RecipeDescriptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackF1F1,
      appBar: CommonAppBar.appBarWithBackArrow(text: "Beetroot Poriyal"),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              height: 180,
              width: Get.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(
                    Images.reciperDescriptionImage,
                  ),
                  fit: BoxFit.cover
                )
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 210,
              width: Get.width,
              decoration: BoxDecoration(
                color: black2A2A,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget.poppinsMediumText(
                        text: "Nutritional Information (per 100g)",
                        color: white,
                        fontSize: 14),
                    SizedBox(
                      height: 25,
                    ),
                    commonTodayInsightsRow(
                      text: "Proteins",
                      subText: "0.0 g/80.0 g",
                      value: 0.3,
                      percentage: "30%",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    commonTodayInsightsRow(
                      text: "Fats",
                      subText: "0.0 g/53.3 g",
                      value: 0.4,
                      percentage: "40%",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    commonTodayInsightsRow(
                      text: "Carbs",
                      subText: "0.0 g/200.0 g",
                      value: 0.5,
                      percentage: "50%",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    commonTodayInsightsRow(
                      text: "Fibre",
                      subText: "0.0 g/30.0 g",
                      value: 0.2,
                      percentage: "20%",
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
