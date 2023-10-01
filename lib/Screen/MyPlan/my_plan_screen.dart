import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Constants/images.dart';
import 'package:fitness/Controller/myplan_controller.dart';
import 'package:fitness/Screen/MyPlan/learner_screen.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:fitness/Widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class MyPlanScreen extends StatelessWidget {
  final MyPlanController myPlanController = Get.put(MyPlanController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackF1F1,
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: ListView.builder(
          itemCount:myPlanController.myPlanList.length ,
          padding: EdgeInsets.only(left: 20,right: 20,bottom: 120,top: 20),
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: InkWell(
              onTap: (){
                Get.to(LeanerScreen());
              },
              child: Container(
                height: 150,
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: AssetImage(myPlanController.myPlanList[index]["image"]),
                    fit: BoxFit.cover
                  )
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0,bottom: 8),
                        child: SvgPicture.asset(myPlanController.myPlanList[index]["imageText"]),
                      ),
                    ),
                    Image.asset(Images.myPlanCanvas,height: 150,width: Get.width,fit: BoxFit.fill,),
                    Center(
                      child: Text(
                        myPlanController.myPlanList[index]["text"],
                        style: TextStyle(
                            color: white,
                            fontSize: 20,
                            fontFamily: poppinsSemiBoldFont,
                            letterSpacing: 5
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
