import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Screen/Language/language_screen.dart';
import 'package:fitness/Screen/Notification/notification_screen.dart';
import 'package:fitness/Screen/Welcome/welcome_screen.dart';
import 'package:fitness/Widgets/common_appbar.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
            child: TextWidget.poppinsRegularText(
                text: "LANGUAGE", color: grey9D9D, fontSize: 12),
          ),
          InkWell(
            onTap: (){
              Get.to(LanguageScreen());
            },
            child: Container(
              height: 60,
              width: Get.width,
              color: black2A2A,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    TextWidget.poppinsMediumText(
                      color: white,
                      text: "Select Language",
                      fontSize: 14
                    ),
                    Spacer(),
                    TextWidget.poppinsMediumText(
                        color: white,
                        text: "English",
                        fontSize: 14
                    ),
                    Icon(Icons.arrow_drop_down,color: white,size: 30,)
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
            child: TextWidget.poppinsRegularText(
                text: "NOTIFICATION", color: grey9D9D, fontSize: 12),
          ),
          InkWell(
            onTap: (){
              Get.to(NotificationScreen());
            },
            child: Container(
              height: 60,
              width: Get.width,
              color: black2A2A,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    TextWidget.poppinsMediumText(
                        color: white,
                        text: "Notification",
                        fontSize: 14
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios,color: white,size: 20,)
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 48,
          ),
          InkWell(
            onTap: (){
              showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  backgroundColor: black2A2A,
                  contentPadding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                  content: Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextWidget.poppinsMediumText(
                            text: "Sing Out", color: white, fontSize: 18),
                        TextWidget.poppinsRegularText(
                            text: "Are you sure?", color: white, fontSize: 15),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 1,
                          width: Get.width,
                          color: black5050,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: InkWell(
                                  onTap: (){
                                    Get.back();
                                  },
                                  child: Center(
                                    child: TextWidget.poppinsMediumText(
                                        text: "Cancel",
                                        color: white,
                                        fontSize: 16
                                    ),
                                  ),
                                )
                            ),
                            Container(
                              height: 44,
                              width: 1,
                              color: black5050,
                            ),
                            Expanded(
                                child: InkWell(
                                  onTap: (){
                                    Get.offAll(WelcomeScreen());
                                  },
                                  child: Center(
                                    child: TextWidget.poppinsMediumText(
                                        text: "Yes",
                                        color: appThemeColor,
                                        fontSize: 16
                                    ),
                                  ),
                                )
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
            child: Container(
              height: 60,
              width: Get.width,
              color: black2A2A,
              alignment: Alignment.center,
              child: TextWidget.poppinsBoldText(
                fontSize: 14,
                text: "SIGN OUT",
                color: appThemeColor
              ),
            ),
          )

        ],
      ),
      appBar: CommonAppBar.appBarWithBackArrow(text: "Settings"),
      backgroundColor: blackF1F1,
    );
  }
}
