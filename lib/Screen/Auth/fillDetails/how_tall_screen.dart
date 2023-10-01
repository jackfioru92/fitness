import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:numberpicker/numberpicker.dart';

class HowTallScreen extends StatefulWidget {
  @override
  State<HowTallScreen> createState() => _HowTallScreenState();
}

class _HowTallScreenState extends State<HowTallScreen> {
  var currentValue = 5.5;
  var currentValue2 = 125;
  var _tabTextIndexSelected = 1;
  var listHeightText = ["Ft/In", "Cm"];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            TextWidget.poppinsRegularText(
              text: "How tall are you?",
              color: white,
              fontSize: 18,
            ),
            SizedBox(
              height: 10,
            ),
            TextWidget.poppinsRegularText(
              text:
                  "Your height will help us calculate important body start to help you reach goals faster.",
              color: white,
              fontSize: 14,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            _tabTextIndexSelected == 0
                ? DecimalNumberPicker(
                    value: currentValue,
                    minValue: 1,
                    itemCount: 5,
                    textStyle: TextStyle(
                        fontSize: 35,
                        color: greyBDBD,
                        fontFamily: poppinsMediumFont),
                    selectedTextStyle: TextStyle(
                        fontSize: 35,
                        color: appThemeColor,
                        fontFamily: poppinsMediumFont),
                    maxValue: 50,
                    onChanged: (value) =>
                        setState(() => currentValue = value.toDouble()),
                  )
                : NumberPicker(
                    value: currentValue2,
                    zeroPad: true,
                    step: 1,
                    minValue: 100,
                    itemCount: 5,
                    textStyle: TextStyle(
                        fontSize: 35,
                        color: greyBDBD,
                        fontFamily: poppinsMediumFont),
                    selectedTextStyle: TextStyle(
                        fontSize: 35,
                        color: appThemeColor,
                        fontFamily: poppinsMediumFont),
                    maxValue: 500,
                    onChanged: (value) => setState(
                      () => currentValue2 = value,
                    ),
                  ),
            SizedBox(
              height: 50,
            ),
            FlutterToggleTab(
              width: 30,
              height: 30,
              borderRadius: 30,
              selectedIndex: _tabTextIndexSelected,
              selectedTextStyle: TextStyle(
                  color: white, fontSize: 14, fontFamily: poppinsMediumFont),
              unSelectedTextStyle: TextStyle(
                  color: blackF1F1, fontSize: 14, fontWeight: FontWeight.w400),
              labels: listHeightText,
              selectedBackgroundColors: [appThemeColor],
              unSelectedBackgroundColors: [greyD9D9],
              selectedLabelIndex: (index) {
                setState(() {
                  _tabTextIndexSelected = index;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
