import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Constants/images.dart';
import 'package:fitness/Controller/profile_controller.dart';
import 'package:fitness/Widgets/common_appbar.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReminderScreen extends StatelessWidget {
  final ProfileController profileController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackF1F1,
      appBar: CommonAppBar.appBarWithBackArrow(text: "Reminders"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 20,bottom: 30),
            child: Container(
              decoration: BoxDecoration(
                  color: black2A2A, borderRadius: BorderRadius.circular(5)),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    Images.reminderProfileImage,
                    height: 44,
                    width: 44,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget.poppinsMediumText(
                            text: "Daily Reminder", color: white, fontSize: 14),
                        TextWidget.poppinsRegularText(
                            text: "Make exercise a daily habit reminder help "
                                "you develop a routine to reach your health"
                                "and fitness goals.\n"
                                "Try to do at least 5 minutes of exercise per "
                                "day 20 minutes is even better! On rest days "
                                "remember to do at least 5 minutes streting "
                                "to keep you daily habit.",
                          fontSize: 12,
                          color: grey9D9D
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, bottom: 10),
            child: TextWidget.poppinsRegularText(
                text: "DAILY REMINDER", color: grey9D9D, fontSize: 12),
          ),
          Container(
            height: 50,
            width: Get.width,
            color: black2A2A,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget.poppinsRegularText(
                    text: "Daily Reminder",
                    color: white,
                    fontSize: 15
                  ),
                  Obx(
                        () => Switch(
                        onChanged: (val) =>
                            profileController.dailyReminder.toggle(),
                        value: profileController.dailyReminder.value,
                        activeColor: white,
                        activeTrackColor: appThemeColor,
                        inactiveTrackColor: blackF1F1,
                      ),
                    ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, bottom: 10,top: 30),
            child: TextWidget.poppinsRegularText(
                text: "INACTIVITY REMINDER", color: grey9D9D, fontSize: 12),
          ),
          Container(
            height: 50,
            width: Get.width,
            color: black2A2A,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget.poppinsRegularText(
                      text: "After 2 days in inactivity",
                      color: white,
                      fontSize: 15
                  ),
                  Obx(
                        () => Switch(
                      onChanged: (val) =>
                          profileController.inactivityReminder.toggle(),
                      value: profileController.inactivityReminder.value,
                      activeColor: white,
                      activeTrackColor: appThemeColor,
                      inactiveTrackColor: blackF1F1,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }



}
