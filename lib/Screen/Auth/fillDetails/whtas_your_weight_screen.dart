import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class WhatsYourWeightScreen extends StatefulWidget {
  const WhatsYourWeightScreen({Key? key}) : super(key: key);

  @override
  State<WhatsYourWeightScreen> createState() => _WhatsYourWeightScreenState();
}

class _WhatsYourWeightScreenState extends State<WhatsYourWeightScreen> {
  var currentValue = 80;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextWidget.poppinsRegularText(
              text: "What’s your current weight?",
              color: white,
              fontSize: 18,
            ),
            SizedBox(
              height: 10,
            ),
            TextWidget.poppinsRegularText(
              text:
              "This will help us determine your goal, and monitor your progress over time.",
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
