import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class WhatsYourTargetScreen extends StatefulWidget {
  const WhatsYourTargetScreen({Key? key}) : super(key: key);

  @override
  State<WhatsYourTargetScreen> createState() => _WhatsYourTargetScreenState();
}

class _WhatsYourTargetScreenState extends State<WhatsYourTargetScreen> {
  var currentValue = 60;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextWidget.poppinsRegularText(
              text: "What’s your target weight?",
              color: white,
              fontSize: 18,
            ),
            SizedBox(
              height: 10,
            ),
            TextWidget.poppinsRegularText(
              text:
              "Based on your BMI of 27.7, your Ideal Weight range is 54-66kg",
              color: white,
              fontSize: 14,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            TextWidget.poppinsMediumText(
              text: "Lose 20 kg",
              fontSize: 14,
              color: appThemeColor
            ),
            SizedBox(
              height: 50,
            ),
            NumberPicker(
              value: currentValue,
              step: 1,
              minValue: 20,
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
              maxValue: 100,
              onChanged: (value) => setState(() => currentValue = value),
            ),
          ],
        ),
      ),
    );
  }
}
