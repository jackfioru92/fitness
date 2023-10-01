import 'package:country_code_picker/country_code_picker.dart';
import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Controller/auth_controller.dart';
import 'package:fitness/Screen/Auth/signin_screen.dart';
import 'package:fitness/Widgets/common_appbar.dart';
import 'package:fitness/Widgets/common_button.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:fitness/Widgets/common_textfield.dart';
import 'package:fitness/Widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final SignUpController signUpController = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackF1F1,
      appBar:CommonAppBar.appBar(),
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                TextWidget.poppinsSemiBoldText(
                    text: "Sign Up", color: white, fontSize: 30),
                TextWidget.poppinsRegularText(
                    text: "Please type your information below",
                    color: white,
                    fontSize: 15),
                SizedBox(
                  height: 50,
                ),
                CommonTextField(
                  hintText: "Full Name",
                  controller: nameController,
                ),
                SizedBox(
                  height: 20,
                ),
                CommonTextField(
                  hintText: "Email",
                  controller: emailController,
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 20,
                ),
                Obx(
                  () => CommonTextField(
                    hintText: "Password",
                    controller: passwordController,
                    obsecureText: signUpController.isVisible.value,
                    suffixIcon: InkWell(
                      onTap: () {
                        signUpController.isVisible.value =
                            !signUpController.isVisible.value;
                      },
                      child: signUpController.isVisible.value
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
                CommonTextField(
                    hintText: "Date of Birth", controller: dobController),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  cursorColor: white,
                  textAlignVertical: TextAlignVertical.center,
                  style: TextStyle(
                      color: white,
                      fontSize: 14,
                      fontFamily: poppinsRegularFont),
                  keyboardType: TextInputType.number,
                  controller: phoneController,
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CountryCodePicker(
                            onChanged: print,
                            initialSelection: 'IN',
                            favorite: ['+91', 'IN'],
                            textStyle: TextStyle(
                              fontFamily: poppinsRegularFont,
                              fontSize: 14,
                              color: grey6C6C,
                            ),
                            showCountryOnly: false,
                            showFlag: true,
                            showOnlyCountryWhenClosed: false,
                            alignLeft: false,
                          ),
                          Container(
                            height: 30,
                            width: 1,
                            color: grey6C6C,
                          )
                        ],
                      ),
                    ),
                    hintText: "(00)000 000 000",
                    hintStyle: TextStyle(
                      color: grey6C6C,
                      fontSize: 14,
                      fontFamily: poppinsRegularFont,
                    ),
                    filled: true,
                    isDense: true,
                    fillColor: black2A2A,
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: black2A2A, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: black2A2A, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: black2A2A, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(
                  height: 58,
                ),
                CommonButton(
                  onTap: () {},
                  text: "Sign Up",
                ),
                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextWidget.poppinsRegularText(
                        fontSize: 14,
                        color: white,
                        text: "Already have an account? "),
                    InkWell(
                      onTap: () {
                        Get.to(SignInScreen());
                      },
                      child: TextWidget.poppinsMediumText(
                          fontSize: 15, color: white, text: "Sign In"),
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
