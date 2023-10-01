import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Screen/BottomNavigation/bottom_navigation_screen.dart';
import 'package:fitness/Widgets/common_appbar.dart';
import 'package:fitness/Widgets/common_button.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackF1F1,
      appBar: CommonAppBar.appBarWithBackArrow(
        text: "Help",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
        child: Column(
          children: [
            Container(
              height: 200,
              width: Get.width,
              decoration: BoxDecoration(
                color: black2A2A,
                borderRadius: BorderRadius.circular(5)
              ),
              padding: EdgeInsets.symmetric(horizontal: 12,vertical: 10),
              child: TextWidget.poppinsRegularText(
                color: white,
                text: "Hi I need your help. I can’t use this app. Can you send me tutorial “How can I use this app” Thank you...."
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextWidget.poppinsRegularText(
                color: greyB5B5,
                fontSize: 14,
                text: "Fill out the form above to send an email and one of our team members will address your question as soon as possible. "
            ),
            Spacer(),
            CommonButton(
              onTap: (){
                Get.offAll(BottomNavigationScreen());
              },
              text: "Send Mail",
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
