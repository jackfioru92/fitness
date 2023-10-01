import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Constants/images.dart';
import 'package:fitness/Widgets/common_appbar.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:fitness/Widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class MyAccountScreen extends StatelessWidget {
  List<Map> myAccountList = [
    {"text": "Edit Profile  and Goals", "onTap": () {}},
    {"text": "Get Recommended Workout Plan", "onTap": () {}},
    {"text": "Delete Account", "onTap": () {}},
    {"text": "Log Out", "onTap": () {}},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackF1F1,
      appBar: CommonAppBar.appBarWithBackArrow(text: "My Account"),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),

          ///top container view
          topContainerView(),

          ///bottom list view
          bottomListView()
        ],
      ),
    );
  }

  ///top container view
  Widget topContainerView() {
    return Container(
      width: Get.width,
      color: black2A2A,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 22.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Image.asset(
                  Images.myAccountProfileImage,
                  height: 80,
                  width: 80,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: 30,
                  width: 30,
                  alignment: Alignment.center,
                  decoration:
                      BoxDecoration(color: white, shape: BoxShape.circle),
                  child: SvgPicture.asset(Images.camera),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            TextWidget.poppinsMediumText(
              text: "Lonnie Murphy",
              color: white,
              fontSize: 16,
            ),
            TextWidget.poppinsRegularText(
              text: "Lonniemurphy@gmail.com",
              color: greyB5B5,
              fontSize: 12,
            ),
          ],
        ),
      ),
    );
  }

  ///bottom list view
  Widget bottomListView() {
    return Expanded(
      child: ScrollConfiguration(
        behavior: MyBehavior(),
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Container(
              decoration: BoxDecoration(
                color: black2A2A,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget.poppinsRegularText(
                      text: myAccountList[index]["text"],
                      color: index!=3?white:appThemeColor,
                      fontSize: 15,
                    ),
                    index==3?SvgPicture.asset(Images.signOut):Icon(Icons.arrow_forward_ios,size: 20,color: white,)
                  ],
                ),
              ),
            ),
          ),
          itemCount: myAccountList.length,
          padding: EdgeInsets.only(top: 20),
          shrinkWrap: true,
        ),
      ),
    );
  }
}
