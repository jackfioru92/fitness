import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Controller/home_controller.dart';
import 'package:fitness/Screen/Home/overhead_press_screen.dart';
import 'package:fitness/Widgets/common_appbar.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:fitness/Widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class FullBodyScreen extends StatelessWidget {
  final HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackF1F1,
      appBar: CommonAppBar.appBarWithBackArrow(text: "Full Body"),
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: ListView.builder(
          padding: EdgeInsets.only(top: 20,left: 20,right: 20,bottom: 20),
          itemCount: homeController.fullBodyList.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: InkWell(
              onTap: (){
                Get.to(OverHeadPressScreen());
              },
              child: Container(
                decoration: BoxDecoration(
                  color: black2A2A,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 44,
                          child: SvgPicture.asset(homeController.fullBodyList[index]["image"])
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      TextWidget.poppinsRegularText(
                        text: homeController.fullBodyList[index]["text"],
                        fontSize: 14,
                        color: white
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
