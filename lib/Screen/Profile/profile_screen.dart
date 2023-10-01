import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Constants/images.dart';
import 'package:fitness/Controller/profile_controller.dart';
import 'package:fitness/Screen/Faqs/faqs_screen.dart';
import 'package:fitness/Screen/Profile/edit_profile_screen.dart';
import 'package:fitness/Screen/Profile/reminder_screen.dart';
import 'package:fitness/Screen/TermsCondition/terms_condition_screen.dart';
import 'package:fitness/Screen/Welcome/welcome_screen.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:fitness/Widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  final ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    List<Map> profileList = [
      {
        "image": Images.editProfileIcon,
        "text": "Edit Profile",
        "onTap": () {
          Get.to(EditProfileScreen());
        }
      },
      {
        "image": Images.reminderIcon,
        "text": "Reminders",
        "onTap": () {
          Get.to(ReminderScreen());
        }
      },
      {
        "image": Images.faqsIcon,
        "text": "FAQs",
        "onTap": () {
          Get.to(FaqsScreen());
        }
      },
      {
        "image": Images.privacyPolicyIcon,
        "text": "Privacy Policy",
        "onTap": () {
          Get.to(TermsConditionScreen());
        }
      },
      {
        "image": Images.logoutSvg,
        "text": "Log out",
        "onTap": () {
          showDialog(
            context: context,
            builder: (_) => AlertDialog(
              backgroundColor: black2A2A,
              contentPadding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              content: Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextWidget.poppinsMediumText(
                      text: "Sing Out",
                      color: white,
                      fontSize: 18,
                    ),
                    TextWidget.poppinsRegularText(
                      text: "Are you sure?",
                      color: white,
                      fontSize: 15,
                    ),
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
                            onTap: () {
                              Get.back();
                            },
                            child: Center(
                              child: TextWidget.poppinsMediumText(
                                  text: "Cancel", color: white, fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          height: 44,
                          width: 1,
                          color: black5050,
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Get.offAll(WelcomeScreen());
                            },
                            child: Center(
                              child: TextWidget.poppinsMediumText(
                                  text: "Yes",
                                  color: appThemeColor,
                                  fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        }
      },
    ];

    return Scaffold(
      backgroundColor: blackF1F1,
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: ListView.builder(
          itemCount: profileList.length,
          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: InkWell(
              onTap: profileList[index]["onTap"],
              child: Container(
                  height: 60,
                  width: Get.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: black2A2A),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      children: [
                        SvgPicture.asset(profileList[index]["image"]),
                        SizedBox(
                          width: 20,
                        ),
                        TextWidget.poppinsMediumText(
                            color: white,
                            fontSize: 14,
                            text: profileList[index]['text'])
                      ],
                    ),
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
