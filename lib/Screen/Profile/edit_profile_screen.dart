import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Controller/bottom_navigation_controller.dart';
import 'package:fitness/Screen/BottomNavigation/bottom_navigation_screen.dart';
import 'package:fitness/Widgets/common_appbar.dart';
import 'package:fitness/Widgets/common_button.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:fitness/Widgets/common_textfield.dart';
import 'package:fitness/Widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfileScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final BottomNavigationController bottomNavigationController = Get.put(BottomNavigationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackF1F1,
      appBar: CommonAppBar.appBarWithBackArrow(text: "Edit Profile"),
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 25,
                ),
                TextWidget.poppinsMediumText(
                    text: 'Full Name', color: white, fontSize: 14),
                SizedBox(
                  height: 10,
                ),
                CommonTextField(
                  hintText: "Name",
                  controller: nameController,
                  textInputType: TextInputType.name,
                  suffixIcon: Icon(Icons.person_outline, color: white),
                ),
                SizedBox(
                  height: 24,
                ),
                TextWidget.poppinsMediumText(
                    text: 'Gender', color: white, fontSize: 14),
                SizedBox(
                  height: 10,
                ),
                CommonTextField(
                  hintText: "Gender",
                  controller: genderController,
                  textInputType: TextInputType.text,
                  suffixIcon: Icon(
                    Icons.arrow_drop_down,
                    color: white,
                    size: 30,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                TextWidget.poppinsMediumText(
                    text: 'Email ID', color: white, fontSize: 14),
                SizedBox(
                  height: 10,
                ),
                CommonTextField(
                  hintText: "Email",
                  controller: emailController,
                  textInputType: TextInputType.emailAddress,
                  suffixIcon: Icon(Icons.email_outlined, color: white),
                ),
                SizedBox(
                  height: 24,
                ),
                TextWidget.poppinsMediumText(
                    text: 'Age', color: white, fontSize: 14),
                SizedBox(
                  height: 10,
                ),
                CommonTextField(
                  hintText: "Age",
                  controller: ageController,
                  textInputType: TextInputType.number,
                  suffixIcon: Icon(
                    Icons.arrow_drop_down,
                    color: white,
                    size: 30,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                TextWidget.poppinsMediumText(
                    text: 'Weight', color: white, fontSize: 14),
                SizedBox(
                  height: 10,
                ),
                CommonTextField(
                  hintText: "Weight",
                  controller: weightController,
                  textInputType: TextInputType.number,
                  suffixIcon: Icon(
                    Icons.arrow_drop_down,
                    color: white,
                    size: 30,
                  ),
                ),
                SizedBox(
                  height: 67,
                ),
                CommonButton(
                  onTap: (){
                    bottomNavigationController.pageIndex.value=3;
                     Get.offAll(BottomNavigationScreen());
                  },
                  text: "Update",
                ),
                SizedBox(
                  height: 70,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
