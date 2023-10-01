import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Constants/images.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:fitness/Widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CuisinesIncludeScreen extends StatelessWidget {
  final List<Map> foodList = [
    {"image":Images.foodImage1,"text":"North Indian","subText":"Roti,  Parantha, Sabjis, Rajma, Chawal etc. "},
    {"image":Images.foodImage2,"text":"South Indian","subText":"Idly, Dosa, Lemon Rice, Upma etc."},
    {"image":Images.foodImage3,"text":"Contiental","subText":"Porridge, Breads, Pastas etc."},
    {"image":Images.foodImage4,"text":"Maharashtrian","subText":"Pooran Poli, Usal etc."},
    {"image":Images.foodImage5,"text":"Tamilian","subText":"Rasam, Pongal, Poriyal etc"},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            TextWidget.poppinsMediumText(
                text: "Which cuisines should we include in your diet?",
                color: white,
                fontSize: 18,
              textAlign: TextAlign.center
            ),
            SizedBox(
              height: 10,
            ),
            TextWidget.poppinsRegularText(
                color: grey6C6C,
                text: "Your diet will inclide foods based in this.",
                fontSize: 12
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: ScrollConfiguration(
                behavior: MyBehavior(),
                child: ListView.builder(
                  itemCount: foodList.length,
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Container(
                      height: 70,
                      width: Get.width,
                      decoration: BoxDecoration(
                          color: black2A2A,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        children: [
                          Image.asset(foodList[index]["image"],height: 70,width: 80,fit: BoxFit.cover,),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextWidget.poppinsMediumText(
                                  text: foodList[index]["text"],
                                  color: white,
                                  fontSize: 14
                              ),
                              TextWidget.poppinsRegularText(
                                  text: foodList[index]["subText"],
                                  color: grey6C6C,
                                  fontSize: 10
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
