import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Screen/Auth/reset_password_screen.dart';
import 'package:fitness/Widgets/common_appbar.dart';
import 'package:fitness/Widgets/common_button.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackF1F1,
      appBar: CommonAppBar.appBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Center(
              child: TextWidget.poppinsSemiBoldText(
                  text: "Verification", color: white, fontSize: 30),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextWidget.poppinsRegularText(
                  text: "We have just send your email an OTP  please enter below to verify",
                  color: white,
                  fontSize: 14,
                  textAlign: TextAlign.center
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Pinput(
              length: 4,
              defaultPinTheme: PinTheme(
                  height: 50,
                  width: 50,
                  textStyle: TextStyle(
                      color: white,
                      fontFamily: poppinsMediumFont,
                      fontSize: 30),
                  decoration: BoxDecoration(
                    color: black2A2A,
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
            SizedBox(
              height: 100,
            ),
            CommonButton(
              text: "Complete",
              onTap: () {
                Get.to(ResetPasswordScreen());
              },
            )
          ],
        ),
      ),
    );
  }
}
