import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Constants/images.dart';
import 'package:fitness/Controller/home_controller.dart';
import 'package:fitness/Screen/Home/recommended_workouts_screen.dart';
import 'package:fitness/Screen/Home/strength_workout_screen.dart';
import 'package:fitness/Screen/Home/weekplan_screen.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:fitness/Widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackF1F1,
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ///recommended Workout Plan view
              recommendedWorkoutPlan(),

              ///Essentials view
              essentialsWidget(),

              ///New reels view
              newReelsView(),

              ///workout collection view
              workOutCollectionView(),
              SizedBox(
                height: 120,
              )
            ],
          ),
        ),
      ),
    );
  }

  ///recommended Workout Plan
  Widget recommendedWorkoutPlan() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Container(
        height: 120,
        width: Get.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
              image: AssetImage(Images.recommendedWorkoutImage),
              fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  Images.workOutPlanCanvas,
                  fit: BoxFit.cover,
                  height: 120,
                  width:  Get.width,
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 6, left: 8),
                  child: TextWidget.poppinsSemiBoldText(
                      text: "Get Recommended Workout\nPlan",
                      color: white,
                      fontSize: 18),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                    onTap: (){
                      Get.to(RecommendedWorkOutsScreen());
                    },
                    child: Container(
                      height: 24,
                      width: 142,
                      decoration: BoxDecoration(
                          color: blue4796,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextWidget.poppinsSemiBoldText(
                            text: "LET’S GET STARTED!",
                            color: white,
                            fontSize: 11,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: white,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  ///Essentials
  Widget essentialsWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget.poppinsSemiBoldText(
              text: "Essentials", color: white, fontSize: 17),
          LayoutBuilder(
            builder: (context, constraints) => GridView.count(
              padding: EdgeInsets.only(top: 15),
              physics: NeverScrollableScrollPhysics(),
              childAspectRatio: MediaQuery.of(context).size.aspectRatio * 3 / 2,
              shrinkWrap: true,
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              children: List.generate(
                  homeController.essentialsList.length,
                  (index) => InkWell(
                    onTap: (){
                      Get.to(StrengthWorkoutScreen());
                    },
                    child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    homeController.essentialsList[index]["image"],
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(5)),
                          child: Stack(
                            children: [
                              Image.asset(
                                Images.essentialsCanvas,
                                fit: BoxFit.fill,
                                height: double.infinity,
                                width: double.infinity,
                              ),
                              Center(
                                child: TextWidget.poppinsBoldText(
                                    text: homeController.essentialsList[index]
                                        ["text"],
                                    color: white,
                                    fontSize: 18),
                              )
                            ],
                          ),
                        ),
                  )).toList(),
            ),
          ),
        ],
      ),
    );
  }

  ///New reels view
  Widget newReelsView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child:  TextWidget.poppinsSemiBoldText(
              text: "New Reels",
              color: white,
              fontSize: 17
          ),
        ),
        SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 130,
          child: ListView.builder(
            itemCount: homeController.newReelList.length,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20, right: 10),
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    width: 180,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                homeController.newReelList[index]["image"]),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  TextWidget.poppinsRegularText(
                      text: homeController.newReelList[index]["text"],
                      color: white,
                      fontSize: 12)
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  ///workout collection view
  Widget workOutCollectionView(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          TextWidget.poppinsSemiBoldText(
              text: "Workout Collection",
              color: white,
              fontSize: 17
          ),
          LayoutBuilder(
            builder: (context, constraints) => GridView.count(
              padding: EdgeInsets.only(top: 15),
              physics: NeverScrollableScrollPhysics(),
              childAspectRatio: MediaQuery.of(context).size.aspectRatio * 3 / 1.5,
              shrinkWrap: true,
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              children: List.generate(
                  homeController.workoutCollectionList.length,
                      (index) => InkWell(
                        onTap: (){
                          Get.to(WeekPlanScreen());
                        },
                        child: Container(
                    decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                homeController.workoutCollectionList[index]["image"],
                              ),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(5)),
                    child: Stack(
                        children: [
                          Image.asset(
                            Images.workOutCollectionCanvas,
                            fit: BoxFit.fill,
                            height: double.infinity,
                            width: double.infinity,
                          ),
                          Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: TextWidget.poppinsSemiBoldText(
                                text: homeController.workoutCollectionList[index]
                                ["text"],
                                color: white,
                                textAlign: TextAlign.center,
                                fontSize: 14,
                              ),
                            )
                          )
                        ],
                    ),
                  ),
                      )).toList(),
            ),
          ),

        ],
      ),
    );
  }
}
