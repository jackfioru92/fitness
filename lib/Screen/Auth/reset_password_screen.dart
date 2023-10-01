import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Controller/auth_controller.dart';
import 'package:fitness/Screen/Auth/fillDetails/fill_details_screen.dart';
import 'package:fitness/Widgets/common_appbar.dart';
import 'package:fitness/Widgets/common_button.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:fitness/Widgets/common_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordScreen extends StatelessWidget {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final ResetPasswordController resetPasswordController =
      Get.put(ResetPasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackF1F1,
      resizeToAvoidBottomInset: false,
      appBar: CommonAppBar.appBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Center(
              child: TextWidget.poppinsSemiBoldText(
                  text: "Reset Password", color: white, fontSize: 30),
            ),
            SizedBox(
              height: 10,
            ),
            TextWidget.poppinsRegularText(
                text:
                    "And now, you can type your new password and confirm it below",
                color: white,
                fontSize: 14,
                textAlign: TextAlign.center),
            SizedBox(
              height: 50,
            ),
            Obx(
              () => CommonTextField(
                hintText: "New Password",
                controller: passwordController,
                obsecureText: resetPasswordController.isVisible.value,
                suffixIcon: InkWell(
                  onTap: () {
                    resetPasswordController.isVisible.value =
                        !resetPasswordController.isVisible.value;
                  },
                  child: resetPasswordController.isVisible.value
                      ? Icon(
                          Icons.visibility_off,
                          color: grey6C6C,
                        )
                      : Icon(
                          Icons.visibility,
                          color: grey6C6C,
                        ),
                ),
                textInputType: TextInputType.visiblePassword,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Obx(
              () => CommonTextField(
                hintText: "Confirm New Password",
                controller: passwordController,
                obsecureText: resetPasswordController.isVisible2.value,
                suffixIcon: InkWell(
                  onTap: () {
                    resetPasswordController.isVisible2.value =
                        !resetPasswordController.isVisible2.value;
                  },
                  child: resetPasswordController.isVisible2.value
                      ? Icon(
                          Icons.visibility_off,
                          color: grey6C6C,
                        )
                      : Icon(
                          Icons.visibility,
                          color: grey6C6C,
                        ),
                ),
                textInputType: TextInputType.visiblePassword,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            CommonButton(
              onTap: (){
                Get.to(FillDetailsScreen());
              },
              text: "Reset Password",
            )
          ],
        ),
      ),
    );
  }
}
