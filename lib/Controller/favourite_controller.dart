import 'package:fitness/Constants/images.dart';
import 'package:get/get.dart';

class FavouriteController extends GetxController{
  List<Map> favouriteList = [
    {"image":Images.favouriteImage1,"text":"Full Body"},
    {"image":Images.favouriteImage2,"text":"Core Strength"},
    {"image":Images.favouriteImage3,"text":"Everyday Feel Good Yoga"},
    {"image":Images.favouriteImage4,"text":"Yoga for Runners"},
    {"image":Images.favouriteImage5,"text":"Movement for Life"},
    {"image":Images.favouriteImage6,"text":"Move More"},
    {"image":Images.favouriteImage7,"text":"Flexibility Challenge"},
    {"image":Images.favouriteImage8,"text":"Yoga for Runners"},
  ];


  List<Map> editFavouriteList = [
    {"image":Images.favouriteImage1,"text":"Full Body"},
    {"image":Images.favouriteImage2,"text":"Core Strength"},
    {"image":Images.favouriteImage3,"text":"Good Yoga"},
    {"image":Images.favouriteImage4,"text":"Good Yoga"},
  ];
}