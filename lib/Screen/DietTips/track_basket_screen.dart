import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Controller/bottom_navigation_controller.dart';
import 'package:fitness/Controller/diet_tip_controller.dart';
import 'package:fitness/Screen/BottomNavigation/bottom_navigation_screen.dart';
import 'package:fitness/Screen/DietTips/today_screen.dart';
import 'package:fitness/Widgets/common_appbar.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TrackBasketScreen extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();
  final List<Map> basketList = [
    {"text": "Boiled Egg", "subText": "1.0 cup  (chopped)", "cal": "210 Cal"},
    {"text": "Brown bread", "subText": "2.0 slice", "cal": "148 Cal"},
    {
      "text": "Banana, ripe",
      "subText": "1.0 small (6” to 6-7/8” long)",
      "cal": "117 Cal"
    },
    {"text": "Cow’s Milk", "subText": "1.0 glass", "cal": "167 Cal"},
  ];
  final BottomNavigationController bottomNavigationController = Get.put(BottomNavigationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackF1F1,
      appBar: CommonAppBar.appBarWithBackArrow(text: "Track Breakfast",onTap: (){
        bottomNavigationController.pageIndex.value = 2;
        Get.offAll(BottomNavigationScreen());
      }),
      body: WillPopScope(
        onWillPop: ()async{
          bottomNavigationController.pageIndex.value = 2;
          Get.offAll(BottomNavigationScreen());
          return false;
        },
        child: GetBuilder<TrackBasketController>(
          init: TrackBasketController(),
          builder: (controller) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextFormField(
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
                    hintText: "Search for food",
                    hintStyle: TextStyle(
                        color: grey6C6C,
                        fontSize: 14,
                        fontFamily: poppinsRegularFont),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: TextWidget.poppinsMediumText(
                    text: "Frequently Tracked Foods", color: white, fontSize: 14),
              ),
              SizedBox(
                height: 30,
              ),
              ListView.builder(
                itemCount: basketList.length,
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 20),
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(bottom: 18.0),
                  child: InkWell(
                    onTap: () {
                      controller.onIndexChange(index);
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget.poppinsMediumText(
                            text: basketList[index]["text"],
                            color: white,
                            fontSize: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextWidget.poppinsMediumText(
                                text: basketList[index]["subText"],
                                color: greyA6A6,
                                fontSize: 12),
                            Row(
                              children: [
                                TextWidget.poppinsMediumText(
                                    text: basketList[index]["cal"],
                                    color: greyA6A6,
                                    fontSize: 12),
                                SizedBox(
                                  width: 15,
                                ),
                                controller.selectedIndex == index
                                    ? Icon(
                                        Icons.check,
                                        color: appThemeColor,
                                      )
                                    : Icon(
                                        Icons.add,
                                        color: white,
                                      )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Spacer(),
              controller.selectedIndex == null
                  ? Container()
                  : Column(
                      children: [
                        Container(
                          height: 50,
                          width: Get.width,
                          color: black2A2A,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextWidget.poppinsMediumText(
                                  text: "Boiled Egg added.",
                                  color: white,
                                  fontSize: 12),
                              TextWidget.poppinsMediumText(
                                  text: "UNDO",
                                  color: appThemeColor,
                                  fontSize: 12),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            Get.off(TodayScreen());
                          },
                          child: Container(
                            height: 50,
                            width: Get.width,
                            color: appThemeColor,
                            alignment: Alignment.center,
                            child: TextWidget.poppinsSemiBoldText(
                                text: "TRACK FOR BREAKFAST",
                                color: white,
                                fontSize: 12),
                          ),
                        ),
                        SizedBox(
                          height: 38,
                        )
                      ],
                    )
            ],
          ),
        ),
      ),
    );
  }
}
