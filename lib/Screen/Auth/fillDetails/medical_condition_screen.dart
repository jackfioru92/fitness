import 'package:fitness/Controller/auth_controller.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:fitness/Widgets/common_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Constants/colors.dart';

class MedicalConditionScreen extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();
  final FillDetailController fillDetailController =
      Get.put(FillDetailController());

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            TextWidget.poppinsRegularText(
                text: "Any Medical Condition we should aware of?",
                color: white,
                fontSize: 18,
                textAlign: TextAlign.center),
            SizedBox(
              height: 10,
            ),
            TextWidget.poppinsRegularText(
              text:
                  "This info will help us guide you to your fitness goals safely and quickly.",
              color: white,
              fontSize: 14,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: searchController,
              style: TextStyle(
                  color: white, fontSize: 14, fontFamily: poppinsRegularFont),
              cursorColor: white,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: black2A2A, width: 1)),
                prefixIcon: Icon(
                  CupertinoIcons.search,
                  size: 25,
                  color: grey8282,
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: black2A2A, width: 1)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: black2A2A, width: 1)),
                filled: true,
                fillColor: black2A2A,
                isDense: true,
                hintText: "Search",
                hintStyle: TextStyle(
                    color: grey6C6C,
                    fontSize: 14,
                    fontFamily: poppinsRegularFont),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Obx(
                () => InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {
                    fillDetailController.condition();
                    fillDetailController.none.value = true;
                  },
                  child: Container(
                    width: 80,
                    decoration: BoxDecoration(
                        color: black2A2A,
                        borderRadius: BorderRadius.circular(30)),
                    alignment: Alignment.center,
                    padding:
                        EdgeInsets.only(left: 16, right: 16, top: 6, bottom: 6),
                    child: TextWidget.poppinsRegularText(
                        text: "None",
                        color: fillDetailController.none.isTrue
                            ? appThemeColor
                            : grey6C6C,
                        fontSize: 15),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {
                      fillDetailController.condition();
                      fillDetailController.diabetes.value = true;
                    },
                    child: Obx(() => CommonMedicalContainer(
                          text: "Diabetes",
                          value: fillDetailController.diabetes.value,
                        ))),
                InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {
                      fillDetailController.condition();
                      fillDetailController.cholestrol.value = true;
                    },
                    child: Obx(() => CommonMedicalContainer(
                          text: "Cholesterol",
                          value: fillDetailController.cholestrol.value,
                        ))),
                InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {
                      fillDetailController.condition();
                      fillDetailController.thyroid.value = true;
                    },
                    child: Obx(() => CommonMedicalContainer(
                        text: "Thyroid",
                        value: fillDetailController.thyroid.value))),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {
                      fillDetailController.condition();
                      fillDetailController.pocs.value = true;
                    },
                    child: Obx(() => CommonMedicalContainer(
                          text: "POCS",
                          value: fillDetailController.pocs.value,
                        ))),
                SizedBox(
                  width: 15,
                ),
                InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {
                      fillDetailController.condition();
                      fillDetailController.injury.value = true;
                    },
                    child: Obx(() => CommonMedicalContainer(
                          text: "Injury",
                          value: fillDetailController.injury.value,
                        ))),
                SizedBox(
                  width: 15,
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {
                    fillDetailController.condition();
                    fillDetailController.depression.value = true;
                  },
                  child: Obx(
                    () => CommonMedicalContainer(
                      text: "Depression",
                      value: fillDetailController.depression.value,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
