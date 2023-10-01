import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Widgets/common_appbar.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:fitness/Widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FaqsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackF1F1,
      appBar: CommonAppBar.appBarWithBackArrow(text: "FAQs"),
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: ListView.builder(
          itemCount: 6,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          shrinkWrap: true,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Container(
              width: Get.width,
              decoration: BoxDecoration(
                color: black2A2A,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 12),
                child: TextWidget.poppinsRegularText(
                  text: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
                  color: greyB7B7,
                  fontSize: 12
                ),
              )
            ),
          ),
        ),
      ),
    );
  }
}
