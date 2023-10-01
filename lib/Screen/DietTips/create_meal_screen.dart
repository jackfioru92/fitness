import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Screen/DietTips/create_your_own_meal_screen.dart';
import 'package:fitness/Widgets/common_appbar.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class CreateMealScreen extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();

  final searchList = [
    "Boiled Egg",
    "Brown bread",
    "Banana, ripe",
    "Cow’s Milk",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackF1F1,
      appBar: CommonAppBar.appBarWithBackArrow(text: "Create Meal",onTap: (){
        Get.off(CreateYourOwnMealScreen(isSaved: false));
      }),
      body: WillPopScope(
        onWillPop: ()async {
          Get.off(CreateYourOwnMealScreen(isSaved: false));
          return false;
        },
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  hintText: "Search for food",
                  hintStyle: TextStyle(
                      color: grey6C6C,
                      fontSize: 14,
                      fontFamily: poppinsRegularFont),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextWidget.poppinsMediumText(
                text: "Search Results",
                color: white,
                fontSize: 14,
              ),
              SizedBox(
                height: 30,
              ),
              ListView.builder(
                itemCount: searchList.length,
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: InkWell(
                    onTap: (){
                      Get.to(CreateYourOwnMealScreen(isSaved: true));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget.poppinsMediumText(
                          text: searchList[index],
                          color: white,
                          fontSize: 12,
                        ),
                        Icon(Icons.add,color: appThemeColor,)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
