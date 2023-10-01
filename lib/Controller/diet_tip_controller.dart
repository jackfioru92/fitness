import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DietTipController extends GetxController {
  var onPageIndex = 0.obs;

  var none = false.obs;
  var poultry = false.obs;
  var pork = false.obs;
  var egg = false.obs;
  var lamb = false.obs;
  var beef = false.obs;
  var gluten = false.obs;
  var lactose = false.obs;
  var nuts = false.obs;
  var soy = false.obs;

  condition() {
    if (none.isTrue ||
        poultry.isTrue ||
        pork.isTrue ||
        egg.isTrue ||
        lamb.isTrue ||
        beef.isTrue ||
        gluten.isTrue ||
        lactose.isTrue ||
        nuts.isTrue ||
        soy.isTrue) {
      none(false);
      poultry(false);
      pork(false);
      egg(false);
      lamb(false);
      beef(false);
      gluten(false);
      lactose(false);
      nuts(false);
      soy(false);
    }
  }
}

class TrackBasketController extends GetxController{
  // ignore: prefer_typing_uninitialized_variables
  var selectedIndex;

  onIndexChange(index){
    selectedIndex = index;
    update();
  }
}

class TodayInsightsController extends GetxController with GetSingleTickerProviderStateMixin{
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'All Meals'),
    Tab(text: 'Breakfast'),
    Tab(text: 'Morning Snack'),
    Tab(text: 'Lunch'),
  ];

  late TabController controller;

  var isSelected = false.obs;

  @override
  void onInit() {
    super.onInit();
    controller = TabController(vsync: this, length: myTabs.length);
  }
}
