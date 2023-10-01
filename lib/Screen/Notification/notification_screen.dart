import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Constants/images.dart';
import 'package:fitness/Controller/home_controller.dart';
import 'package:fitness/Widgets/common_appbar.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:fitness/Widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class NotificationScreen extends StatelessWidget {
  final NotificationController notificationController =
      Get.put(NotificationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackF1F1,
      appBar: CommonAppBar.appBarWithBackArrow(text: "Notification"),
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: ListView.builder(
          itemCount: notificationController.notificationList.length,
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
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 12),
                    child: Row(
                      children: [
                        SvgPicture.asset(Images.notificationIcon),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextWidget.poppinsMediumText(
                                  text: notificationController
                                      .notificationList[index]["text"],
                                  color: white,
                                  fontSize: 14),
                              TextWidget.poppinsRegularText(
                                  text: notificationController
                                      .notificationList[index]["subText"],
                                  color: greyB7B7,
                                  fontSize: 10)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8, right: 8),
                    child: TextWidget.poppinsRegularText(
                        text: "08:30 PM",
                        fontSize: 10,
                        color: grey7E7E
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
