import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Controller/home_controller.dart';
import 'package:fitness/Widgets/common_appbar.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:fitness/Widgets/common_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WorkoutLibraryScreen extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();
  final HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackF1F1,
      appBar: CommonAppBar.appBarWithBackArrow(text: "Workout Library"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: Column(
          children: [
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
                hintText: "Search Workouts",
                hintStyle: TextStyle(
                    color: grey6C6C,
                    fontSize: 14,
                    fontFamily: poppinsRegularFont),
              ),
            ),
            Expanded(
              child: ScrollConfiguration(
                behavior: MyBehavior(),
                child: ListView.builder(
                  padding: EdgeInsets.only(top: 20),
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: black2A2A,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 10),
                        child: Row(
                          children: [
                            Image.asset(
                              homeController.workOutLibraryList[index]["image"],
                              height: 40,
                              width: 40,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget.poppinsRegularText(
                                  text: homeController.workOutLibraryList[index]["text"],
                                  fontSize: 14,
                                  color: white
                                ),
                                TextWidget.poppinsRegularText(
                                  color: grey8C8C,
                                  fontSize: 12,
                                  text: homeController.workOutLibraryList[index]["subText"]
                                ),
                              ],
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios,color: grey9595,size: 15,)
                          ],
                        ),
                      ),
                    ),
                  ),
                  itemCount: homeController.workOutLibraryList.length,
                  shrinkWrap: true,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
