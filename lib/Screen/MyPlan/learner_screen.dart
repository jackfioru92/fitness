import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Screen/Home/full_body_screen.dart';
import 'package:fitness/Widgets/common_appbar.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class LeanerScreen extends StatelessWidget {
  const LeanerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackF1F1,
      appBar: CommonAppBar.appBarWithBackArrow(text: "Leaner"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: black2A2A,
                borderRadius: BorderRadius.circular(5),
              ),
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget.poppinsMediumText(
                    text: "Tone Up, Feel Amazing",
                    color: white,
                    fontSize: 14
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextWidget.poppinsRegularText(
                    text: "Leaner is here to help you focus on toning your body feeling great about the body you’re in.",
                    fontSize: 12,
                    color: grey9D9D
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            commonContainer(text: "Beginner",number: "1"),
            SizedBox(
              height: 20,
            ),
            commonContainer(text: "Intermediate",number: "2"),
            SizedBox(
              height: 20,
            ),
            commonContainer(text: "Advanced",number: "3"),
          ],
        ),
      ),
    );
  }

  Widget commonContainer({number, text}){
    return InkWell(
      onTap: (){
        Get.to(FullBodyScreen());
      },
      child: Container(
        decoration: BoxDecoration(
          color: black2A2A,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.symmetric(horizontal: 22,vertical: 15),
        child: Row(
          children: [
            TextWidget.poppinsRegularText(
                text: number,
                color: white,
                fontSize: 14
            ),
            SizedBox(
              width: 15,
            ),
            TextWidget.poppinsRegularText(
                text: text,
                color: white,
                fontSize: 14
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: white,
              size: 20,
            )
          ],
        ),
      ),
    );
  }
}
