import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Constants/images.dart';
import 'package:fitness/Screen/DietTips/recipe_description_screen.dart';
import 'package:fitness/Widgets/common_appbar.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:fitness/Widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class SabzisDalScreen extends StatelessWidget {
  final List<Map> sabziList = [
    {"image": Images.vegetableImage1, "text": "Beetroot"},
    {"image": Images.vegetableImage2, "text": "Thinai"},
    {"image": Images.vegetableImage3, "text": "Chickpea"},
    {"image": Images.vegetableImage4, "text": "Methi"},
    {"image": Images.eggImage1, "text": "Spinach"},
    {"image": Images.eggImage2, "text": "Omelette"},
    {"image": Images.eggImage3, "text": "Onion Tomoto"},
    {"image": Images.eggImage4, "text": "Mushrooms"},
    {"image": Images.saladImage1, "text": "Rajmah"},
    {"image": Images.saladImage2, "text": "Tomato"},
    {"image": Images.saladImage3, "text": "Carrot"},
    {"image": Images.saladImage4, "text": "Cabbage"},
    {"image": Images.idliImage1, "text": "Dosa"},
    {"image": Images.idliImage2, "text": "Rice Dosa"},
    {"image": Images.idliImage3, "text": "Brown Dosa"},
    {"image": Images.idliImage4, "text": "Oats idli"},
    {"image": Images.fruitImage1, "text": "Apple"},
    {"image": Images.fruitImage2, "text": "Orange"},
    {"image": Images.fruitImage3, "text": "Banana"},
    {"image": Images.fruitImage4, "text": "Watermelon"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackF1F1,
      appBar: CommonAppBar.appBarWithBackArrow(text: "Sabzis, Dals and Curries"),
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: LayoutBuilder(
          builder: (context, constraints) => GridView.count(
            padding: EdgeInsets.only(top: 30,left: 20,right: 20,bottom: 40),
            childAspectRatio: MediaQuery.of(context).size.aspectRatio * 3 / 2.4,
            shrinkWrap: true,
            crossAxisCount: 4,
            crossAxisSpacing: 15,
            mainAxisSpacing: 35,
            children: List.generate(
              sabziList.length,
                  (index) => InkWell(
                    onTap: (){
                      Get.to(RecipeDescriptionScreen());
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          sabziList[index]["image"],
                          height: 73,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          sabziList[index]["text"],
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: white,
                            fontSize: 12,
                            fontFamily: poppinsMediumFont
                          ),
                        )

                      ],
                    ),
                  ),
            ).toList(),
          ),
        ),
      ),
    );
  }
}
