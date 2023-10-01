import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Constants/images.dart';
import 'package:fitness/Widgets/common_appbar.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:fitness/Widgets/common_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecipeScreen extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();
  final List<Map> saladList = [
    {"image": Images.saladImage1, "text": "Rajmah"},
    {"image": Images.saladImage2, "text": "Tomato"},
    {"image": Images.saladImage3, "text": "Carrot"},
    {"image": Images.saladImage4, "text": "Cabbage"},
    {"image": Images.saladImage5, "text": "Fruit"},
    {"image": Images.saladImage6, "text": "Onion"},
    {"image": Images.saladImage7, "text": "Chana"},
    {"image": Images.saladImage8, "text": "Kosambari"},
  ];

  final List<Map> fruitList = [
    {"image": Images.fruitImage1, "text": "Apple"},
    {"image": Images.fruitImage2, "text": "Orange"},
    {"image": Images.fruitImage3, "text": "Banana"},
    {"image": Images.fruitImage4, "text": "Watermelon"},
  ];

  final List<Map> vegetableList = [
    {"image": Images.vegetableImage1, "text": "Beetroot"},
    {"image": Images.vegetableImage2, "text": "Thinai"},
    {"image": Images.vegetableImage3, "text": "Chickpea"},
    {"image": Images.vegetableImage4, "text": "Methi"},
  ];
  final List<Map> eggList = [
    {"image": Images.eggImage1, "text": "Spinach"},
    {"image": Images.eggImage2, "text": "Omelette"},
    {"image": Images.eggImage3, "text": "Onion Tomoto"},
    {"image": Images.eggImage4, "text": "Mushrooms"},
  ];

  final List<Map> idliList = [
    {"image": Images.idliImage1, "text": "Dosa"},
    {"image": Images.idliImage2, "text": "Rice Dosa"},
    {"image": Images.idliImage3, "text": "Brown Dosa"},
    {"image": Images.idliImage4, "text": "Oats idli"},
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackF1F1,
      appBar: CommonAppBar.appBarWithBackArrow(text: "Healthy Recipes"),
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
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
                    hintText: "Search for Recipe",
                    hintStyle: TextStyle(
                        color: grey6C6C,
                        fontSize: 14,
                        fontFamily: poppinsRegularFont),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
                child: Row(
                  children: [
                    commonRecipeContainer(
                        image: Images.recipeImage1, text: "Sabzis, Dals"),
                    SizedBox(
                      width: 18,
                    ),
                    commonRecipeContainer(
                        image: Images.recipeImage2, text: "Rotis"),
                    SizedBox(
                      width: 18,
                    ),
                    commonRecipeContainer(
                        image: Images.recipeImage3, text: "Idlis"),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: TextWidget.poppinsMediumText(
                    text: "Salads",
                    color: white,
                    fontSize: 14
                ),
              ),
              SizedBox(
                height: 15,
              ),
              commonRecipeList(list: saladList),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: TextWidget.poppinsMediumText(
                    text: "Fruits and Juices",
                    color: white,
                    fontSize: 14
                ),
              ),
              SizedBox(
                height: 15,
              ),
              commonRecipeList(list: fruitList),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: TextWidget.poppinsMediumText(
                    text: "Vegetarian Dishes",
                    color: white,
                    fontSize: 14
                ),
              ),
              SizedBox(
                height: 15,
              ),
              commonRecipeList(list: vegetableList),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: TextWidget.poppinsMediumText(
                    text: "Egg Based Dishes",
                    color: white,
                    fontSize: 14
                ),
              ),
              SizedBox(
                height: 15,
              ),
              commonRecipeList(list: eggList),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: TextWidget.poppinsMediumText(
                    text: "Idlis & Dosas",
                    color: white,
                    fontSize: 14
                ),
              ),
              SizedBox(
                height: 15,
              ),
              commonRecipeList(list: idliList),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
