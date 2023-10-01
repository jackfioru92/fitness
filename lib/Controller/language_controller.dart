import 'package:get/get.dart';

class LanguageController extends GetxController{
  var selectedIndex = 0.obs;

  // ignore: prefer_typing_uninitialized_variables
  var selectedIndex2;

  onIndexChange(index){
    selectedIndex2 = index;
    update();
  }
}