import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonButton extends StatelessWidget {
  final void Function()? onTap;
  final String? text;


  CommonButton({this.onTap, this.text});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      color: appThemeColor,
      height: 50,
      minWidth: Get.width,
      child: TextWidget.poppinsSemiBoldText(
          color: white,
          fontSize: 16,
          text: text
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
    );
  }
}


