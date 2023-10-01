import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Constants/images.dart';
import 'package:fitness/Controller/diet_tip_controller.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:fitness/Widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_week/flutter_calendar_week.dart';
import 'package:get/get.dart';

class TodayInsightsScreen extends StatelessWidget {
  final TodayInsightsController todayInsightsController =
      Get.put(TodayInsightsController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      ()=> Scaffold(
        backgroundColor: blackF1F1,
        appBar: AppBar(
          backgroundColor: black2A2A,
          leading: InkWell(
            onTap: () async {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back,
              color: white,
            ),
          ),
          toolbarHeight: 80,
          bottom: todayInsightsController.isSelected.value==true?PreferredSize(
            preferredSize: Size(Get.width, 80),
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Divider(
                    color: black4949,
                    thickness: 2,
                  ),
                ),
                CalendarWeek(
                  backgroundColor: black2A2A,
                  controller: CalendarWeekController(),
                  height: 80,
                  showMonth: false,
                  todayBackgroundColor: black3D3D,
                  pressedDateBackgroundColor: greyA6A6,
                  dateStyle: TextStyle(color: greyA6A6),
                  weekendsStyle: TextStyle(color: greyA6A6),
                  dayOfWeekStyle: TextStyle(
                    color: greyA6A6,
                  ),
                  dayOfWeek: ['S','M','T','W','T','F','S'],
                  todayDateStyle: TextStyle(color: appThemeColor),
                  minDate: DateTime.now().add(
                    Duration(days: -365),
                  ),
                  maxDate: DateTime.now().add(
                    Duration(days: 365),
                  ),
                ),
              ],
            )
          ):PreferredSize(
            preferredSize: Size(Get.width, 45),
            child: Container(
              height: 45,
              width: Get.width,
              color: black2A2A,
              child: TabBar(
                tabs: todayInsightsController.myTabs,
                // padding: EdgeInsets.only(left: 15, right: 15),
                unselectedLabelColor: white,
                isScrollable: true,
                labelStyle:
                TextStyle(fontFamily: poppinsMediumFont, fontSize: 12),
                unselectedLabelStyle:
                TextStyle(fontFamily: poppinsMediumFont, fontSize: 12),
                labelColor: appThemeColor,
                controller: todayInsightsController.controller,
                indicatorColor: appThemeColor,
                indicatorWeight: 2,
              ),
            ),
          ),
          centerTitle: true,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextWidget.poppinsBoldText(
                  text: "Today’s Insights", fontSize: 17, color: white),
              InkWell(
                onTap: () {
                  todayInsightsController.isSelected.value = !todayInsightsController.isSelected.value;
                },
                child: todayInsightsController.isSelected.value==true?Icon(
                  Icons.arrow_drop_up,
                  size: 30,
                  color: white,
                ):Icon(
                  Icons.arrow_drop_down,
                  size: 30,
                  color: white,
                ),
              )
            ],
          ),
          elevation: 0,
        ),
        body: Obx(()=>todayInsightsController.isSelected.value==true?SizedBox(height: Get.height,width: Get.width,child: Image.asset(Images.todayInsightsBgImage,fit: BoxFit.cover),):
        TabBarView(
          controller: todayInsightsController.controller,
          children: [
            todayInSightsTabBarView(),
            todayInsightsBreakFastView(),
            todayInSightsTabBarView(),
            todayInSightsTabBarView(),
          ],
        ))
      ),
    );
  }
}
