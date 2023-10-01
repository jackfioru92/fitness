import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Controller/home_controller.dart';
import 'package:fitness/Screen/Home/full_body_screen.dart';
import 'package:fitness/Widgets/common_appbar.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:fitness/Widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StrengthWorkoutScreen extends StatelessWidget {
 final HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    print("==========${Get.width}");
    return Scaffold(
      backgroundColor: blackF1F1,
      appBar: CommonAppBar.appBarWithBackArrow(text: 'Strength Workouts'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ScrollConfiguration(
          behavior: MyBehavior(),
          child: LayoutBuilder(
            builder: (context, constraints) => GridView.count(
              padding: EdgeInsets.only(top: 20,bottom: 20),
              childAspectRatio: Get.width>360?MediaQuery.of(context).size.aspectRatio * 3 / 1.1:MediaQuery.of(context).size.aspectRatio * 3 / 1.3,
              shrinkWrap: true,
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 2,
              children: List.generate(
                homeController.strengthWorkoutList.length,
                    (index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: (){
                        Get.to(FullBodyScreen());
                      },
                      child: Container(
                        height: 100,
                        width: 180,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(homeController.strengthWorkoutList[index]["image"]),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextWidget.poppinsRegularText(
                        text: homeController.strengthWorkoutList[index]["text"],
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
