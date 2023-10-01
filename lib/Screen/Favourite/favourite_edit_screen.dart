import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Constants/images.dart';
import 'package:fitness/Controller/favourite_controller.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class FavouriteEditScreen extends StatelessWidget {
  final FavouriteController favouriteController =
      Get.put(FavouriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackF1F1,
      appBar: AppBar(
        backgroundColor: black2A2A,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: TextWidget.poppinsBoldText(
            text: "My Favorites", color: white, fontSize: 17),
        actions: [
          Row(
            children: [
              TextWidget.poppinsMediumText(
                  color: white, fontSize: 14, text: "CANCEL"),
              SizedBox(
                width: 25,
              ),
              InkWell(
                onTap: (){
                  Get.back();
                },
                child: TextWidget.poppinsMediumText(
                    color: white, fontSize: 14, text: "SAVE"),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: favouriteController.editFavouriteList.length,
        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Container(
            height: 64,
            width: Get.width,
            decoration: BoxDecoration(
                color: black2A2A, borderRadius: BorderRadius.circular(10)),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Container(
                  height: 26,
                  width: 26,
                  alignment: Alignment.center,
                  decoration:
                      BoxDecoration(color: appThemeColor, shape: BoxShape.circle),
                  child: Icon(Icons.remove,color: white),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 38,
                  width: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: AssetImage(
                          favouriteController.editFavouriteList[index]['image'],
                      ),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                TextWidget.poppinsMediumText(
                  text: favouriteController.editFavouriteList[index]['text'],
                  color: white,
                  fontSize: 14
                ),
                Spacer(),
                SvgPicture.asset(Images.menuIcon)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
