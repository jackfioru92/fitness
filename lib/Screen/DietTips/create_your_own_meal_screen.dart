import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Constants/images.dart';
import 'package:fitness/Screen/DietTips/create_meal_screen.dart';
import 'package:fitness/Screen/DietTips/my_meal_result_screen.dart';
import 'package:fitness/Screen/DietTips/my_meal_screen.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CreateYourOwnMealScreen extends StatelessWidget {
  final bool isSaved;


  CreateYourOwnMealScreen({required this.isSaved});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackF1F1,
      appBar: AppBar(
        backgroundColor: black2A2A,
        leading: InkWell(
            onTap: () {
             Get.off(MyMealScreen());
            },
            child: Icon(
              Icons.arrow_back,
              color: white,
            )),
        elevation: 0,
      ),
      body: WillPopScope(
        onWillPop: ()async{
          Get.off(MyMealScreen());
          return false;
        },
        child: Column(
          children: [
            Container(
              color: black2A2A,
              width: Get.width,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      Images.spoon,
                      height: 40,
                      width: 40,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextWidget.poppinsMediumText(
                        text: "Create your own meal and track 3x faster.",
                        color: white,
                        textAlign: TextAlign.center,
                        fontSize: 16),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextFormField(
                cursorColor: white,
                style: TextStyle(
                    color: white, fontSize: 14, fontFamily: poppinsRegularFont),
                decoration: InputDecoration(
                  labelText: "Enter the meal name",
                  labelStyle: TextStyle(
                      color: greyCDCD,
                      fontSize: 13,
                      fontFamily: poppinsRegularFont),
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: appThemeColor, width: 1)),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: appThemeColor, width: 1)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: appThemeColor, width: 1)),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget.poppinsMediumText(
                      text: "Add food & ingredients", fontSize: 14, color: white),
                  InkWell(
                    onTap: () {
                      Get.to(CreateMealScreen());
                    },
                    child: Container(
                      height: 25,
                      width: 25,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: appThemeColor, shape: BoxShape.circle),
                      child: Icon(Icons.add, color: white),
                    ),
                  )
                ],
              ),
            ),
            Expanded(child: isSaved==false?bottomView():bottom2View(),)
          ],
        ),
      ),
    );
  }

  bottomView(){
    return Column(
      children: [
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: TextWidget.poppinsRegularText(
              text: "Click the ‘+’ button to add food ingredients to your meal!",
              color: greyB3B3,
              fontSize: 14,
              textAlign: TextAlign.center
          ),
        ),
        Spacer(),
        Container(
          height: 50,
          width: Get.width,
          color: black4848,
          alignment: Alignment.center,
          child: TextWidget.poppinsMediumText(
              text: "SAVE MEAL",
              fontSize: 14,
              color: white
          ),
        ),
        SizedBox(
          height: 60,
        ),
      ],
    );
  }

  bottom2View(){
    return Column(
      children: [
        SizedBox(
          height: 32,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Column(
                children: [
                  TextWidget.poppinsMediumText(
                    text: "Boiled Egg",
                    color: white,
                    fontSize: 12
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextWidget.poppinsMediumText(
                    text: "1.0 Large",
                    color: grey9F9F
                  )
                ],
              ),
              Spacer(),
              TextWidget.poppinsMediumText(
                text: "77 Cal",
                color: grey9F9F,
                fontSize: 12
              ),
              SizedBox(width: 20,),
              Icon(Icons.close,color: white,),
            ],
          ),
        ),
        Spacer(),
        InkWell(
          onTap: (){
            Get.to(MyMealResultScreen());
          },
          child: Container(
            height: 50,
            width: Get.width,
            color: appThemeColor,
            alignment: Alignment.center,
            child: TextWidget.poppinsMediumText(
                text: "SAVE MEAL",
                fontSize: 14,
                color: white
            ),
          ),
        ),
        SizedBox(
          height: 60,
        ),
      ],
    );
  }
}
