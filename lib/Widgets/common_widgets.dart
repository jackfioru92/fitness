import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Constants/images.dart';
import 'package:fitness/Controller/bottom_navigation_controller.dart';
import 'package:fitness/Controller/home_controller.dart';
import 'package:fitness/Screen/BottomNavigation/bottom_navigation_screen.dart';
import 'package:fitness/Screen/DietTips/sabzis_dal_screen.dart';
import 'package:fitness/Screen/DietTips/track_basket_screen.dart';
import 'package:fitness/Screen/Setting/setting_screen.dart';
import 'package:fitness/Screen/Profile/edit_profile_screen.dart';
import 'package:fitness/Screen/Profile/exercise_library_screen.dart';
import 'package:fitness/Screen/Profile/help_screen.dart';
import 'package:fitness/Screen/Profile/my_account_screen.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}

class CommonMedicalContainer extends StatelessWidget {
  final String? text;

  // ignore: prefer_typing_uninitialized_variables
  final value;

  CommonMedicalContainer({this.text, this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: black2A2A, borderRadius: BorderRadius.circular(30)),
      alignment: Alignment.center,
      padding: EdgeInsets.only(left: 16, right: 16, top: 6, bottom: 6),
      child: TextWidget.poppinsRegularText(
          text: text,
          color: value == true ? appThemeColor : grey6C6C,
          fontSize: 15),
    );
  }
}

class CommonHaveAnyFoodContainer extends StatelessWidget {
  final String? text;

  // ignore: prefer_typing_uninitialized_variables
  final value;

  CommonHaveAnyFoodContainer({this.text, this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
        decoration: BoxDecoration(
            color: black2A2A, borderRadius: BorderRadius.circular(30)),
        padding: EdgeInsets.only(left: 8, right: 12, top: 6, bottom: 6),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            value == true
                ? Container(
                    height: 25,
                    width: 25,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: appThemeColor,
                    ),
                    child: Icon(Icons.check, color: white, size: 20),
                  )
                : Container(
                    height: 19,
                    width: 19,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: black5050, width: 1)),
                  ),
            SizedBox(
              width: 10,
            ),
            TextWidget.poppinsRegularText(
                text: text, color: white, fontSize: 11),
          ],
        ));
  }
}

commonDietDialogContainer({text, text2}) {
  return Expanded(
    child: InkWell(
      onTap: (){
        Get.to(TrackBasketScreen());
      },
      child: Container(
        height: 120,
        decoration: BoxDecoration(
            color: black2A2A, borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWidget.poppinsMediumText(text: text, color: white, fontSize: 10),
            SizedBox(
              height: 10,
            ),
            Icon(
              Icons.add,
              color: white,
              size: 25,
            ),
            SizedBox(
              height: 10,
            ),
            TextWidget.poppinsMediumText(
                text: text2, color: greyA6A6, fontSize: 9),
          ],
        ),
      ),
    ),
  );
}

drawerView() {
  List<Map> drawerList = [
    {"image": Images.homeIcon, "text": "Home"},
    {"image": Images.exerciseLibraryIcon, "text": "Exercise Library"},
    {"image": Images.accountIcon, "text": "My Account"},
    {"image": Images.helpCenterIcon, "text": "Help Center"},
    {"image": Images.settingIcon, "text": "Settings"},
  ];

  final HomeController homeController = Get.find();
  final BottomNavigationController bottomNavigationController = Get.put(BottomNavigationController());

  return Drawer(
    backgroundColor: blackF1F1,
    child: Column(
      children: [
        SizedBox(
          height: 80,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Image.asset(
                Images.drawerProfileImage,
                height: 60,
                width: 60,
                fit: BoxFit.cover,
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget.poppinsSemiBoldText(
                      text: "Lonnie Murphy", fontSize: 14, color: white),
                  SizedBox(
                    height: 5,
                  ),
                  TextWidget.poppinsRegularText(
                      color: white,
                      text: "Lonniemurphy@gmail.com",
                      fontSize: 10),
                ],
              ),
              Spacer(),
              InkWell(
                  onTap: () {
                    Get.to(EditProfileScreen());
                  },
                  child: SvgPicture.asset(Images.drawerEditProfileIcon)),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Expanded(
          child: ScrollConfiguration(
            behavior: MyBehavior(),
            child: ListView.builder(
              itemBuilder: (context, index) => Obx(
                () => Container(
                  color: homeController.selectedIndex.value == index
                      ? black2A2A
                      : blackF1F1,
                  child: InkWell(
                    onTap: () {
                      homeController.selectedIndex.value = index;
                      if(index == 0){
                        bottomNavigationController.pageIndex.value=0;
                        Get.offAll(BottomNavigationScreen());
                      }
                      if (index == 4) {
                        Get.to(SettingScreen());
                      }
                      if (index == 1) {
                        Get.to(ExerciseLibraryScreen());
                      }
                      if (index == 2) {
                        Get.to(MyAccountScreen());
                      }
                      if (index == 3) {
                        Get.to(HelpScreen());
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25.0, vertical: 20),
                      child: Row(
                        children: [
                          SvgPicture.asset(drawerList[index]["image"]),
                          SizedBox(
                            width: 20,
                          ),
                          TextWidget.poppinsMediumText(
                              text: drawerList[index]["text"],
                              color: white,
                              fontSize: 14)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              itemCount: drawerList.length,
              shrinkWrap: true,
            ),
          ),
        )
      ],
    ),
  );
}

commonContainer({image, text,onTap}){
  return Expanded(
    child: InkWell(
      onTap: onTap,
      child: Container(
        height: 132,
        decoration: BoxDecoration(
            color: black2A2A,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(image),
            SizedBox(
              height: 20,
            ),
            TextWidget.poppinsMediumText(
                color: white,
                text: text,
                fontSize: 12
            )
          ],
        ),
      ),
    ),
  );
}

commonTodayInsightsRow({text, subText, value, percentage}){
  return  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      SizedBox(
        width: 100,
        child: TextWidget.poppinsRegularText(
            text: text,
            color: greyCDCD,
            fontSize: 12
        ),
      ),
      SizedBox(
        width: 70,
        child:  TextWidget.poppinsRegularText(
            text: subText,
            color: greyA6A6,
            fontSize: 10
        ),
      ),

      SizedBox(
        height: 3,
        width: 70,
        child: LinearPercentIndicator(
          percent: value,
          progressColor: appThemeColor,
          barRadius: Radius.circular(10),
          padding: EdgeInsets.zero,
          backgroundColor: grey5C5C,
        ),
      ),
      TextWidget.poppinsRegularText(
          text: percentage,
          color: appThemeColor,
          fontSize: 12
      ),
    ],
  );
}


todayInSightsTabBarView()=> SingleChildScrollView(
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SvgPicture.asset(Images.spoon),
            SizedBox(
              width: 15,
            ),
            TextWidget.poppinsMediumText(
                text: "Food Calorie Budget", color: white, fontSize: 14),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        TextWidget.poppinsRegularText(
            fontSize: 12,
            color: greyA6A6,
            text:
            "See your daily calorie intake and calorie budget here. Start tracking to see this section come to life."),
        SizedBox(
          height: 30,
        ),
        Container(
          height: 412,
          width: Get.width,
          decoration: BoxDecoration(
              color: black2A2A, borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget.poppinsMediumText(
                        text: "Your Calorie Budget",
                        color: white,
                        fontSize: 14),
                    Icon(
                      Icons.share,
                      color: white,
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SvgPicture.asset(Images.todayInsightsImage),
                    TextWidget.poppinsMediumText(
                        color: greyA6A6,
                        fontSize: 12,
                        text: "0 / 1,600 Cal")
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                TextWidget.poppinsRegularText(
                    fontSize: 12,
                    color: greyA6A6,
                    text:
                    "People who track their meals are more likely to lose weight. Track to see your progress."),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Divider(
                    color: black3939,
                    thickness: 1,
                  ),
                ),
               TextWidget.poppinsMediumText(
                    text: "Macronutrients Breakup",
                    color: white,
                    fontSize: 14),
                SizedBox(
                  height: 25,
                ),
                commonTodayInsightsRow(
                  text: "Proteins",
                  subText: "0.0 g/80.0 g",
                  value: 0.0,
                  percentage: "0%",
                ),
                SizedBox(
                  height: 20,
                ),
                commonTodayInsightsRow(
                  text: "Fats",
                  subText: "0.0 g/53.3 g",
                  value: 0.0,
                  percentage: "0%",
                ),
                SizedBox(
                  height: 20,
                ),
                commonTodayInsightsRow(
                  text: "Carbs",
                  subText: "0.0 g/200.0 g",
                  value: 0.0,
                  percentage: "0%",
                ),
                SizedBox(
                  height: 20,
                ),
                commonTodayInsightsRow(
                  text: "Fibre",
                  subText: "0.0 g/30.0 g",
                  value: 0.0,
                  percentage: "0%",
                ),
              ],
            ),
          ),
        )
      ],
    ),
  ),
);

todayInsightsBreakFastView()=>SingleChildScrollView(
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SvgPicture.asset(Images.spoon),
            SizedBox(
              width: 15,
            ),
            TextWidget.poppinsMediumText(
                text: "Food Calorie Budget", color: white, fontSize: 14),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        TextWidget.poppinsRegularText(
            fontSize: 12,
            color: greyA6A6,
            text:
            "See your daily calorie intake and calorie budget here. Start tracking to see this section come to life."),
        SizedBox(
          height: 30,
        ),
        Container(
          height: 412,
          width: Get.width,
          decoration: BoxDecoration(
              color: black2A2A, borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget.poppinsMediumText(
                        text: "Your Calorie Budget",
                        color: white,
                        fontSize: 14),
                    Icon(
                      Icons.share,
                      color: white,
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SvgPicture.asset(Images.todayInsightsImage2),
                    TextWidget.poppinsMediumText(
                        color: greyA6A6,
                        fontSize: 12,
                        text: "211 / 427 Cal")
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                TextWidget.poppinsRegularText(
                    fontSize: 12,
                    color: greyA6A6,
                    text:
                    "People who track their meals are more likely to lose weight. Track to see your progress."),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Divider(
                    color: black3939,
                    thickness: 1,
                  ),
                ),
                TextWidget.poppinsMediumText(
                    text: "Macronutrients Breakup",
                    color: white,
                    fontSize: 14),
                SizedBox(
                  height: 25,
                ),
                commonTodayInsightsRow(
                  text: "Proteins",
                  subText: "0.0 g/80.0 g",
                  value: 0.80,
                  percentage: "80%",
                ),
                SizedBox(
                  height: 20,
                ),
                commonTodayInsightsRow(
                  text: "Fats",
                  subText: "0.0 g/53.3 g",
                  value: 1.0,
                  percentage: "100%",
                ),
                SizedBox(
                  height: 20,
                ),
                commonTodayInsightsRow(
                  text: "Carbs",
                  subText: "0.0 g/200.0 g",
                  value: 0.3,
                  percentage: "3%",
                ),
                SizedBox(
                  height: 20,
                ),
                commonTodayInsightsRow(
                  text: "Fibre",
                  subText: "0.0 g/30.0 g",
                  value: 0.0,
                  percentage: "0%",
                ),
              ],
            ),
          ),
        )
      ],
    ),
  ),
);

commonRecipeContainer({image, text})=>Expanded(
  child: InkWell(
    onTap: (){
      Get.to(SabzisDalScreen());
    },
    child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            image,
            height: 110,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        TextWidget.poppinsMediumText(
            text: text,
            color: white,
            fontSize: 12
        )
      ],
    ),
  ),
);

commonRecipeList({list})=>SizedBox(
  height: 100,
  child: ListView.builder(
    itemCount: list.length,
    scrollDirection: Axis.horizontal,
    padding: EdgeInsets.only(left: 20, right: 10),
    itemBuilder: (context, index) => Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Column(
        children: [
          Image.asset(
            list[index]["image"],
            height: 73,
            fit: BoxFit.cover,
          ),
          TextWidget.poppinsMediumText(
              text: list[index]["text"],
              color: white,
              fontSize: 12)
        ],
      ),
    ),
  ),
);
