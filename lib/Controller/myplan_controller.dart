import 'package:fitness/Constants/images.dart';
import 'package:get/get.dart';

class MyPlanController extends GetxController{
  List<Map> myPlanList = [
    { "image": Images.learner,"text":"LEANER","imageText":Images.learnerText},
    { "image": Images.filtter,"text":"FILTTER","imageText":Images.filtterText},
    { "image": Images.stronger,"text":"STRONGER","imageText":Images.strongerText},
  ];
}