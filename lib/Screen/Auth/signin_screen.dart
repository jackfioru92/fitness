import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Constants/images.dart';
import 'package:fitness/Controller/auth_controller.dart';
import 'package:fitness/Screen/Auth/forgot_password_screen.dart';
import 'package:fitness/Screen/Auth/signup_screen.dart';
import 'package:fitness/Screen/BottomNavigation/bottom_navigation_screen.dart';
import 'package:fitness/Widgets/common_button.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:fitness/Widgets/common_textfield.dart';
import 'package:fitness/Widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SignInScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final SignInController signInController = Get.put(SignInController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackF1F1,
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                ///top view
                topView(),

                ///center view
                centerView(context),

                ///bottom view
                bottomView()
              ],
            ),
          ),
        ),
      ),
    );
  }

  ///top view
  Widget topView() {
    return Column(
      children: [
        SizedBox(
          height: 100,
        ),
        TextWidget.poppinsSemiBoldText(
            text: "Welcome back", color: white, fontSize: 30),
        TextWidget.poppinsRegularText(
            text: "Sign in to continue", color: white, fontSize: 15),
        SizedBox(
          height: 109,
        ),
      ],
    );
  }

  ///center view
  Widget centerView(context) {
    return Column(
      children: [
        CommonTextField(
          hintText: "Enter email/mobile no",
          controller: emailController,
          textInputType: TextInputType.emailAddress,
        ),
        SizedBox(
          height: 20,
        ),
        Obx(
          () => CommonTextField(
            hintText: "Enter Password",
            controller: passwordController,
            obsecureText: signInController.isVisible.value,
            suffixIcon: InkWell(
              onTap: () {
                signInController.isVisible.value =
                    !signInController.isVisible.value;
              },
              child: signInController.isVisible.value
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
          height: 10,
        ),
        Align(
            alignment: Alignment.topRight,
            child: InkWell(
              onTap: () {
                Get.to(ForgotPasswordScreen());
              },
              child: TextWidget.poppinsRegularText(
                  text: "Forgot Password?", color: white, fontSize: 13),
            )),
        SizedBox(
          height: 40,
        ),
        CommonButton(
          onTap: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => BottomNavigationScreen(),
              ),
              (route) => false,
            );
          },
          text: "Sign in",
        ),
        SizedBox(
          height: 25,
        ),
      ],
    );
  }

  ///bottom view
  Widget bottomView() {
    return Column(
      children: [
        TextWidget.poppinsRegularText(
            text: "Continue as  Guest?", color: grey6C6C, fontSize: 13),
        SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 1,
                  color: white,
                ),
              ),
              SizedBox(
                width: 28,
              ),
              TextWidget.poppinsSemiBoldText(
                  text: "Or", color: white, fontSize: 15),
              SizedBox(
                width: 28,
              ),
              Expanded(
                child: Container(
                  height: 1,
                  color: white,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Images.appleLogo),
            SizedBox(
              width: 40,
            ),
            SvgPicture.asset(Images.facebookLogo),
            SizedBox(
              width: 40,
            ),
            SvgPicture.asset(Images.googleLogo),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWidget.poppinsRegularText(
                fontSize: 14, color: white, text: "Don't have an account ? "),
            InkWell(
              onTap: () {
                Get.to(SignUpScreen());
              },
              child: TextWidget.poppinsMediumText(
                  fontSize: 15, color: white, text: "Sign up"),
            )
          ],
        ),
        SizedBox(
          height: 54,
        )
      ],
    );
  }
}
