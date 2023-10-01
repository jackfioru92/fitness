import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Controller/auth_controller.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GenderScreen extends StatelessWidget {
  final List genderList = ["Male", "Female", "Others"];


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            TextWidget.poppinsRegularText(
              text: "What’s your biological Sex?",
              color: white,
              fontSize: 18,
            ),
            SizedBox(
              height: 10,
            ),
            TextWidget.poppinsRegularText(
              text:
                  "We support all form of gender expression. However, we need this to calculate your body",
              color: white,
              fontSize: 14,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            LayoutBuilder(
              builder: (context, constraints) => GridView.count(
                padding: EdgeInsets.zero,
                childAspectRatio:
                    MediaQuery.of(context).size.aspectRatio * 3 / 0.5,
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                children: List.generate(
                  genderList.length,
                  (index) => GetBuilder<FillDetailController>(
                    init: FillDetailController(),
                    builder:(controller) =>  InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: (){
                        controller.onIndexChange(index);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: TextWidget.poppinsMediumText(
                          text: genderList[index],
                          color: controller.selectedIndex==index?appThemeColor:white,
                          fontSize: 16,
                        ),
                        decoration: BoxDecoration(
                            color: black2A2A,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                ).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
