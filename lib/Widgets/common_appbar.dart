import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CommonAppBar {
  static appBar() {
    return AppBar(
      backgroundColor: blackF1F1,
      leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back,
            color: white,
          )),
      elevation: 0,
    );
  }

  static appBarWithBackArrow({text,onTap}) {
    return AppBar(
      backgroundColor: black2A2A,
      systemOverlayStyle: SystemUiOverlayStyle(
        // Status bar color
        statusBarColor: black2A2A,
      ),
      leading: InkWell(
        onTap: onTap ?? () {
          Get.back();
        },
        child: Icon(
          Icons.arrow_back,
          color: white,
        ),
      ),
      centerTitle: true,
      title: TextWidget.poppinsBoldText(text: text, fontSize: 17, color: white),
      elevation: 0,
    );
  }
}
