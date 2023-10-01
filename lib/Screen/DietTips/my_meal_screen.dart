import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Constants/images.dart';
import 'package:fitness/Screen/DietTips/create_your_own_meal_screen.dart';
import 'package:fitness/Screen/DietTips/today_screen.dart';
import 'package:fitness/Widgets/common_appbar.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';

class MyMealScreen extends StatelessWidget {
  const MyMealScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackF1F1,
      appBar: CommonAppBar.appBarWithBackArrow(text: "My Meals",onTap: (){
        Get.off(TodayScreen());
      }),
      body: WillPopScope(
        onWillPop: ()async{
          Get.off(TodayScreen());
          return false;
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(Images.spoon,height: 54,width: 54,),
              SizedBox(
                height: 25,
              ),
              TextWidget.poppinsMediumText(
                  text: "Create your own meal and track 3x faster.",
                  color: white,
                  fontSize: 14),
              SizedBox(
                height: 25,
              ),
              MaterialButton(
                onPressed: () {
                  Get.to(CreateYourOwnMealScreen(isSaved: false,));
                },
                height: 36,
                minWidth: 130,
                color: appThemeColor,
                child: TextWidget.poppinsMediumText(
                  text: "CREATE A MEAL",
                  color: white,
                  fontSize: 14
                ),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
