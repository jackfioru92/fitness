import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Screen/Auth/verification_screen.dart';
import 'package:fitness/Widgets/common_appbar.dart';
import 'package:fitness/Widgets/common_button.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:fitness/Widgets/common_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordScreen extends StatelessWidget {
  final TextEditingController phoneController = TextEditingController();

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
                   text: "Forgot Password",
                   color: white,
                   fontSize: 30
               ),
             ),
             SizedBox(
               height: 10,
             ),
             TextWidget.poppinsRegularText(
               text: "Please type your email or phone number below and we can help you reset password",
               color: white,
               fontSize: 14,
               textAlign: TextAlign.center
             ),
             SizedBox(
               height: 50,
             ),
             CommonTextField(hintText: "Enter or Phone Number", controller: phoneController,textInputType: TextInputType.phone,),
             SizedBox(
               height: 100,
             ),
             CommonButton(
               onTap: (){
                 Get.to(VerificationScreen());
               },
               text: "Send",
             )
           ],
        ),
      ),
    );
  }
}
