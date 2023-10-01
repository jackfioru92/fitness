import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Controller/home_controller.dart';
import 'package:fitness/Widgets/common_appbar.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:fitness/Widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WeekPlanScreen extends StatelessWidget {
  final HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    print(Get.width);
    print(Get.height);
    return Scaffold(
      backgroundColor: blackF1F1,
      appBar: CommonAppBar.appBarWithBackArrow(
        text: "Couch to Fit: 6 Week plan",
      ),
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: ListView.builder(
          itemCount: homeController.weekPlanList.length,
          padding: EdgeInsets.only(top: 20, bottom: 20),
          itemBuilder: (context, index) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: TextWidget.poppinsMediumText(
                    text: homeController.weekPlanList[index]["text"],
                    color: greyA1A1,
                    fontSize: 14,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              LayoutBuilder(
                builder: (context, constraints) => GridView.count(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  childAspectRatio: Get.width > 360
                      ? MediaQuery.of(context).size.aspectRatio * 3 / 1.3
                      : MediaQuery.of(context).size.aspectRatio * 3 / 1.5,
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 5,
                  children: List.generate(
                    homeController.weekPlanList[index]["imageList"].length,
                    (index2) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 110,
                            width: 160,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        homeController.weekPlanList[index]
                                            ["imageList"][index2]["image"]),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextWidget.poppinsRegularText(
                          text: homeController.weekPlanList[index]["imageList"]
                              [index2]["text"],
                          color: white,
                          fontSize: 12,
                        )
                      ],
                    ),
                  ).toList(),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              index == 5
                  ? Container()
                  : Divider(
                      color: black2929,
                      thickness: 1,
                    ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
