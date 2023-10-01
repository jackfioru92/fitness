import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Constants/images.dart';
import 'package:fitness/Controller/home_controller.dart';
import 'package:fitness/Screen/Profile/jump_screen.dart';
import 'package:fitness/Widgets/common_appbar.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:fitness/Widgets/common_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ExerciseLibraryScreen extends StatelessWidget {
  final HomeController homeController = Get.find();
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackF1F1,
      appBar: CommonAppBar.appBarWithBackArrow(text: "Exercise Library"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: searchController,
              style: TextStyle(
                  color: white, fontSize: 14, fontFamily: poppinsRegularFont),
              cursorColor: white,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(color: black2A2A, width: 1)),
                prefixIcon: Icon(
                  CupertinoIcons.search,
                  size: 25,
                  color: grey8282,
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(color: black2A2A, width: 1)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(color: black2A2A, width: 1)),
                filled: true,
                fillColor: black2A2A,
                isDense: true,
                hintText: "Search Exercises",
                hintStyle: TextStyle(
                    color: grey6C6C,
                    fontSize: 14,
                    fontFamily: poppinsRegularFont),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ScrollConfiguration(
                behavior: MyBehavior(),
                child: ListView.builder(
                  padding: EdgeInsets.only(bottom: 20),
                  itemCount: homeController.exerciseLibraryList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: InkWell(
                      onTap: (){
                        Get.to(JumpScreen());
                      },
                      child: Container(
                        height: 60,
                        width: Get.width,
                        decoration: BoxDecoration(
                          color: black2A2A,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 22.0),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 30,
                                child: SvgPicture.asset(homeController.exerciseLibraryList[index]["image"]),
                              ),
                              SizedBox(
                                width: 22,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextWidget.poppinsRegularText(
                                    text: homeController.exerciseLibraryList[index]["text"],
                                    color: white,
                                    fontSize: 14
                                  ),
                                  TextWidget.poppinsRegularText(
                                      text: homeController.exerciseLibraryList[index]["subText"],
                                      color: grey8C8C,
                                      fontSize: 12
                                  ),
                                ],
                              ),
                              Spacer(),
                              SvgPicture.asset(Images.playButton)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
