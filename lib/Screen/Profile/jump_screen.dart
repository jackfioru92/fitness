import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Constants/images.dart';
import 'package:fitness/Widgets/common_appbar.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class JumpScreen extends StatelessWidget {
  const JumpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackF1F1,
      appBar: CommonAppBar.appBarWithBackArrow(text: "180 jump"),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
        child: Column(
          children: [
            Container(
              height: 219,
              width: Get.height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                    image: AssetImage(Images.jumpScreenImage),
                    fit: BoxFit.fill
                ),
              ),
              child: Stack(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(Images.jumpScreenCanvas,height: 219,width: Get.width,fit: BoxFit.cover,)),
                  Center(child: SvgPicture.asset(Images.playIcon),),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.favorite_border,color: white,),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(Icons.share,color: white,),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 166,
              width: Get.width,
              decoration: BoxDecoration(
                  color: black2A2A,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
              ),
              padding:  EdgeInsets.symmetric(horizontal: 10.0,vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget.poppinsMediumText(
                      color: white,
                      text: "Incline Bench Sit-Ups",
                      fontSize: 14
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextWidget.poppinsRegularText(
                      text: "Step 1: Lie back on the decline bench. Position hands overhead. Kness are bent.",
                      color: greyB7B7,
                      fontSize: 12
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextWidget.poppinsRegularText(
                      text: "Step 2: Raise your upper body upward while keeping your lower back on the bench. Hold for one second. Return to starting position.",
                      color: greyB7B7,
                      fontSize: 12
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
