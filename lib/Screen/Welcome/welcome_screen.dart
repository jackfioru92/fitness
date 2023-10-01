import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Constants/images.dart';
import 'package:fitness/Screen/Auth/signin_screen.dart';
import 'package:fitness/Widgets/common_button.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:fitness/Widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int indexPage = 0;

  PageController pageController = PageController(initialPage: 0);

  final List<Map> welcomeList = [
    {
      "image": Images.welcomeBgImage1,
      "text": "Welcome Back",
      "subText":
          "The first fitness App Improve your fitness practice mindfulness, or prepare for new adventures with a series of specially designed workouts and meditations."
    },
    {
      "image": Images.welcomeBgImage2,
      "text": "Yoga Methods",
      "subText":
          "Yoga methods will help you gain strength, get in better shape and embrace a healthy lifestyle"
    },
    {
      "image": Images.welcomeBgImage3,
      "text":"Healthy Diet",
      "subText":"Create and save your own custom workouts. Name your workouts, save them, and they’ll automatically appear when you’re ready to workout."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(welcomeList[indexPage]["image"],height: indexPage==2?MediaQuery.of(context).size.height :620,fit: BoxFit.cover,width: MediaQuery.of(context).size.width,),
          ScrollConfiguration(
            behavior: MyBehavior(),
            child: PageView.builder(
              controller: pageController,
              itemCount: welcomeList.length,
              onPageChanged: (i) {
                setState(
                  () {
                    indexPage = i;
                  },
                );
              },
              itemBuilder: (context, index) => Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  Images.welcomeCanvas,
                  width: Get.width,
                  height: 440,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextWidget.poppinsSemiBoldText(
                  color: white,
                  text: welcomeList[indexPage]["text"],
                  fontSize: 26),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: TextWidget.poppinsRegularText(
                    color:whiteF2F2,
                    text: welcomeList[indexPage]["subText"],
                    fontSize: 14,
                  textAlign: TextAlign.center
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  3,
                      (position) => Padding(
                    padding: const EdgeInsets.all(3),
                    child: Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: indexPage == position
                            ? white
                            : grey5151,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: CommonButton(onTap: (){
                  if(indexPage==2){
                    Get.to(SignInScreen());
                  }else{
                    pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
                  }
                },text: indexPage!=0?"Next":"Get Started",),
              ),
              SizedBox(
                height: 50,
              )
            ],
          )
        ],
      ),
    );
  }
}
