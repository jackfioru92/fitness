import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Constants/images.dart';
import 'package:fitness/Controller/diettips_controller.dart';
import 'package:fitness/Screen/DietTips/today_diet_tips_screen.dart';
import 'package:fitness/Screen/DietTips/track_basket_screen.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:fitness/Widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class DietTipsScreen extends StatelessWidget {
  final DietTipsController dietTipsController = Get.put(DietTipsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackF1F1,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Column(
          children: [
            ///top view
            topView(),

            ///grid view widget
            gridviewWidget(),

            ///view all track view
            viewAllTrackView()
          ],
        ),
      ),
    );
  }

  ///top view
  Widget topView() {
    return InkWell(
      onTap: (){
        Get.to(ToDayDietTipScreen());
      },
      child: Container(
        width: Get.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: black2A2A),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget.poppinsSemiBoldText(
                text: "Nutrition",
                color: white,
                fontSize: 12,
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SvgPicture.asset(Images.dietTipImage1),
                  SizedBox(
                    width: 20,
                  ),
                  TextWidget.poppinsMediumText(
                      text: "Eat upto 1,500 Cal", color: white, fontSize: 12),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      dialog();
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: appThemeColor, shape: BoxShape.circle),
                      child: Icon(Icons.add, color: white),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  ///grid view widget
  Widget gridviewWidget() {
    return LayoutBuilder(
      builder: (context, constraints) => GridView.count(
        padding: EdgeInsets.only(top: 15, bottom: 15),
        physics: NeverScrollableScrollPhysics(),
        childAspectRatio: MediaQuery.of(context).size.aspectRatio * 3 / 1.3,
        shrinkWrap: true,
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        children: List.generate(
          dietTipsController.dietTipList.length,
          (index) => Container(
              decoration: BoxDecoration(
                color: black2A2A,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                      dietTipsController.dietTipList[index]["image"]),
                  SizedBox(
                    height: 10,
                  ),
                  TextWidget.poppinsMediumText(
                    fontSize: 12,
                    color: white,
                    text: dietTipsController.dietTipList[index]["text"],
                  ),
                  TextWidget.poppinsRegularText(
                      text: dietTipsController.dietTipList[index]["subText"],
                      color: grey9393,
                      fontSize: 10)
                ],
              )),
        ).toList(),
      ),
    );
  }



  ///dialog view
  dialog(){
    return Get.defaultDialog(
        backgroundColor: blackF1F1,
        title: "",
        titlePadding: EdgeInsets.zero,
        content: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              TextWidget.poppinsMediumText(
                  text: "Which meal would you like to track?",
                  color: white,
                  fontSize: 14),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  commonDietDialogContainer(text: "Breakfast",text2: "0 of 427 Cal"),
                  SizedBox(
                    width: 20,
                  ),
                  commonDietDialogContainer(text: "Morning Snack",text2: "0 of 160 Cal"),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  commonDietDialogContainer(text: "Lunch",text2: "0 of 427 Cal"),
                  SizedBox(
                    width: 20,
                  ),
                  commonDietDialogContainer(text: "Evening Snack",text2: "0 of 160 Cal"),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: InkWell(
                  onTap: (){
                    Get.to(TrackBasketScreen());
                  },
                  child: Container(
                    height: 120,
                    width: 100,
                    decoration: BoxDecoration(
                        color: black2A2A, borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextWidget.poppinsMediumText(text: "Dinner", color: white, fontSize: 10),
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
                            text: "0 of 427 Cal", color: greyA6A6, fontSize: 9),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }

  ///view all track view
  Widget viewAllTrackView() {
    return Container(
      height: 50,
      width: Get.width,
      decoration: BoxDecoration(
          color: black2A2A, borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.symmetric(horizontal: 15),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextWidget.poppinsMediumText(
              text: "View All Track", color: white, fontSize: 12),
          Icon(
            Icons.arrow_forward_ios,
            color: white,
            size: 20,
          )
        ],
      ),
    );
  }
}
