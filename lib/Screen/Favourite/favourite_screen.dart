import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Controller/favourite_controller.dart';
import 'package:fitness/Screen/Favourite/favourite_edit_screen.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavouriteScreen extends StatelessWidget {
  final FavouriteController favouriteController =
      Get.put(FavouriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackF1F1,
      appBar: AppBar(
        backgroundColor: black2A2A,
        elevation: 0,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back,
              color: white,
            )),
        title: TextWidget.poppinsBoldText(
            text: "My Favorites", color: white, fontSize: 17),
        centerTitle: true,
        actions: [
          Center(
            child: InkWell(
              onTap: () {
                Get.to(FavouriteEditScreen());
              },
              child: TextWidget.poppinsMediumText(
                  text: "Edit", color: white, fontSize: 14),
            ),
          ),
          SizedBox(
            width: 18,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: LayoutBuilder(
          builder: (context, constraints) => GridView.count(
            padding: EdgeInsets.only(top: 20),
            childAspectRatio: Get.width > 360
                ? MediaQuery.of(context).size.aspectRatio * 3 / 1
                : MediaQuery.of(context).size.aspectRatio * 3 / 1.3,
            shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            children: List.generate(
              favouriteController.favouriteList.length,
              (index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 80,
                    width: 180,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(favouriteController
                                .favouriteList[index]["image"]),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  TextWidget.poppinsRegularText(
                      text: favouriteController.favouriteList[index]["text"],
                      color: white,
                      fontSize: 12)
                ],
              ),
            ).toList(),
          ),
        ),
      ),
    );
  }
}
