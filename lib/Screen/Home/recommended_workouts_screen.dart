import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Controller/home_controller.dart';
import 'package:fitness/Widgets/common_appbar.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:fitness/Widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecommendedWorkOutsScreen extends StatelessWidget {
  final HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackF1F1,
      appBar: CommonAppBar.appBarWithBackArrow(text: "Recommended  Workouts"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ScrollConfiguration(
          behavior: MyBehavior(),
          child: LayoutBuilder(
            builder: (context, constraints) => GridView.count(
              padding: EdgeInsets.only(top: 20,bottom: 20),
              childAspectRatio: Get.width>360?MediaQuery.of(context).size.aspectRatio * 3 / 1.2:MediaQuery.of(context).size.aspectRatio * 3 / 1.3,
              shrinkWrap: true,
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              // mainAxisSpacing: 5,
              children: List.generate(
                homeController.recommendedWorkoutList.length,
                    (index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: (){
                        // Get.to(FillBodyScreen());
                      },
                      child: Container(
                        height: 110,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(homeController.recommendedWorkoutList[index]["image"]),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextWidget.poppinsRegularText(
                        text: homeController.recommendedWorkoutList[index]["text"],
                        color: white,
                        fontSize: 12)
                  ],
                ),
              ).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
