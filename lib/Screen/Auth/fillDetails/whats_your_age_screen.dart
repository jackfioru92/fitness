import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class WhatsYourAgeScreen extends StatefulWidget {
  @override
  State<WhatsYourAgeScreen> createState() => _WhatsYourAgeScreenState();
}

class _WhatsYourAgeScreenState extends State<WhatsYourAgeScreen> {
   int currentValue = 25;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            TextWidget.poppinsRegularText(
              text: "What’s your Age?",
              color: white,
              fontSize: 18,
            ),
            SizedBox(
              height: 10,
            ),
            TextWidget.poppinsRegularText(
              text:
              "Your age determines how much you should consume. (Select your age in years)",
              color: white,
              fontSize: 14,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            NumberPicker(
              value: currentValue,
              step: 1,
              minValue: 1,
              itemCount: 5,
              textStyle: TextStyle(
                fontSize: 35,
                color: greyBDBD,
                fontFamily: poppinsMediumFont
              ),
              selectedTextStyle:  TextStyle(
                fontSize: 35,
                color: appThemeColor,
                fontFamily: poppinsMediumFont
            ),
              maxValue: 50,
              onChanged: (value) => setState(() => currentValue = value),
            ),
          ],
        ),
      ),
    );
  }
}
