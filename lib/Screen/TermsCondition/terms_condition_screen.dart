import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Widgets/common_appbar.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:fitness/Widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TermsConditionScreen extends StatelessWidget {
  final List<Map> termsList = [
    {"text": "1. Terms"},
    {"text": "2. User Account"},
    {"text": "3. Your Content"},
    {"text": "4. Using Our Site"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackF1F1,
      appBar: CommonAppBar.appBarWithBackArrow(text: "Terms and conditions"),
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: ListView.builder(
          itemCount: termsList.length,
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
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget.poppinsMediumText(
                            text: termsList[index]["text"],
                            fontSize: 14,
                            color: white),
                        SizedBox(
                          height: 5,
                        ),
                        TextWidget.poppinsRegularText(
                          text:
                              "Lorem Ipsum is simply dummy text of the printing "
                              "and typesetting industry. Lorem Ipsum has been the "
                              "indu stry's standard dummy text ever since the "
                              "1500s, whe an unknown printer took a galley of type "
                              "and sc rambled it to make a type",
                          color: greyB7B7,
                          fontSize: 12,
                        ),
                      ],
                    ))),
          ),
        ),
      ),
    );
  }
}
