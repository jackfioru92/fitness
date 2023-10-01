import 'package:fitness/Constants/images.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<Map> essentialsList = [
    {"image": Images.strength, "text": "STRENGTH"},
    {"image": Images.cardio, "text": "CARDIO"},
    {"image": Images.yoga, "text": "YOGA"},
    {"image": Images.stretching, "text": "STRETCHING"},
  ];

  List<Map> newReelList = [
    {"image": Images.newReelImage1, "text": "Soul Flow Yoga"},
    {"image": Images.newReelImage2, "text": "Glute Gains"},
    {"image": Images.newReelImage3, "text": "Brain Break"},
    {"image": Images.newReelImage4, "text": "Seated Upper Back Streches"},
    {"image": Images.newReelImage5, "text": "Cardio for Outside"},
    {"image": Images.newReelImage6, "text": "Mindful Morning Stretch"},
  ];

  List<Map> workoutCollectionList = [
    {
      "image": Images.workoutCollectionImage1,
      "text": "Couch to Fit: 6 Week Plan"
    },
    {
      "image": Images.workoutCollectionImage2,
      "text": "Movement for Life: 8 Week Plan"
    },
    {"image": Images.workoutCollectionImage3, "text": "Move More, Hurt Less"},
    {"image": Images.workoutCollectionImage4, "text": "Reduce Stress"},
    {"image": Images.workoutCollectionImage5, "text": "Sports Conditioning"},
    {"image": Images.workoutCollectionImage6, "text": "Better for Beginners"},
    {"image": Images.workoutCollectionImage7, "text": "Cycle Series"},
    {"image": Images.workoutCollectionImage8, "text": "50+ Fit"},
    {"image": Images.workoutCollectionImage9, "text": "Focused Toning"},
    {"image": Images.workoutCollectionImage10, "text": "Flexibility Challenge"},
    {"image": Images.workoutCollectionImage11, "text": "Build Muscle"},
    {"image": Images.workoutCollectionImage12, "text": "Lose Weight"},
  ];

  List<Map> workOutLibraryList = [
    {
      "image": Images.workoutLibraryImage1,
      "text": "10 Sets of 10",
      "subText": "Strength - Advanced"
    },
    {
      "image": Images.workoutLibraryImage2,
      "text": "300 Rep Chipper Challenge",
      "subText": "Strength - Advanced"
    },
    {
      "image": Images.workoutLibraryImage3,
      "text": "5 Minute Abs",
      "subText": "Strength - Intermediate"
    },
    {
      "image": Images.workoutLibraryImage4,
      "text": "5 Minute Yoga Boost",
      "subText": "Yoga - Beginner"
    },
    {
      "image": Images.workoutLibraryImage5,
      "text": "5 Minute Ab Tabata",
      "subText": "Strength - Intermediate"
    },
    {
      "image": Images.workoutLibraryImage6,
      "text": "Absolutely Awesome",
      "subText": "Strength - Intermediate"
    },
    {
      "image": Images.workoutLibraryImage7,
      "text": "Abs & Core Day",
      "subText": "Strength - Intermediate"
    },
    {
      "image": Images.workoutLibraryImage1,
      "text": "10 Sets of 10",
      "subText": "Strength - Advanced"
    },
    {
      "image": Images.workoutLibraryImage2,
      "text": "300 Rep Chipper Challenge",
      "subText": "Strength - Advanced"
    },
    {
      "image": Images.workoutLibraryImage3,
      "text": "5 Minute Abs",
      "subText": "Strength - Intermediate"
    },
    {
      "image": Images.workoutLibraryImage4,
      "text": "5 Minute Yoga Boost",
      "subText": "Yoga - Beginner"
    },
    {
      "image": Images.workoutLibraryImage5,
      "text": "5 Minute Ab Tabata",
      "subText": "Strength - Intermediate"
    },
    {
      "image": Images.workoutLibraryImage6,
      "text": "Absolutely Awesome",
      "subText": "Strength - Intermediate"
    },
    {
      "image": Images.workoutLibraryImage7,
      "text": "Abs & Core Day",
      "subText": "Strength - Intermediate"
    },
  ];

  List<Map> strengthWorkoutList = [
    {"image": Images.strengthImage1, "text": "Full Body"},
    {"image": Images.strengthImage2, "text": "Core Strength"},
    {"image": Images.strengthImage3, "text": "Upper Body"},
    {"image": Images.strengthImage4, "text": "Lower Body"},
    {"image": Images.strengthImage5, "text": "Rump Roaster"},
    {"image": Images.strengthImage6, "text": "Seven Minute"},
    {"image": Images.strengthImage7, "text": "Six-Pack Challenge"},
    {"image": Images.strengthImage8, "text": "Toing Core and Gults"},
    {"image": Images.strengthImage9, "text": "Low Impact: Lower Body"},
    {"image": Images.strengthImage10, "text": "Tabata Bodyweight"},
    {"image": Images.strengthImage11, "text": "Tabata Dumbbell"},
    {"image": Images.strengthImage12, "text": "Tabata Kettebell"},
    {"image": Images.strengthImage13, "text": "Rump Roaster"},
    {"image": Images.strengthImage14, "text": "Seven Minute"},
    {"image": Images.strengthImage15, "text": "Six-Pack Challenge"},
    {"image": Images.strengthImage16, "text": "Toing Core and Gults"},
  ];

  List<Map> fullBodyList = [
    {"image": Images.fullBodyImage1, "text": "Overhead Press"},
    {"image": Images.fullBodyImage2, "text": "Forward Lunges"},
    {"image": Images.fullBodyImage3, "text": "Inch Warms"},
    {"image": Images.fullBodyImage4, "text": "Steam Engine"},
    {"image": Images.fullBodyImage5, "text": "Push-Ups"},
    {"image": Images.fullBodyImage6, "text": "Rear Lunges"},
    {"image": Images.fullBodyImage7, "text": "Windmill"},
    {"image": Images.fullBodyImage8, "text": "Running in Place"},
    {"image": Images.fullBodyImage9, "text": "Shoulder Top Push Up"},
    {"image": Images.fullBodyImage10, "text": "Mountain Climbers"},
    {"image": Images.fullBodyImage11, "text": "Mason Twist"},
    {"image": Images.fullBodyImage12, "text": "Switch Kick"},
    {"image": Images.fullBodyImage13, "text": "One Arm Side Push-Ups"},
    {"image": Images.fullBodyImage14, "text": "Calf Raises"},
    {"image": Images.fullBodyImage15, "text": "Plank"},
    {"image": Images.fullBodyImage16, "text": "Revers Plank"},
  ];


  List<Map> recommendedWorkoutList = [
    {"image": Images.recommendedImage1, "text": "Time for Core"},
    {"image": Images.recommendedImage2, "text": "Fit in 5 Minutes"},
    {"image": Images.recommendedImage3, "text": "Bodyweight Super Six"},
    {"image": Images.recommendedImage4, "text": "Beach Confident Abs"},
    {"image": Images.recommendedImage5, "text": "Toing Core and Glutes"},
    {"image": Images.recommendedImage6, "text": "Beginner’s Full Body"},
    {"image": Images.recommendedImage7, "text": "Six-Pack Challenge"},
    {"image": Images.recommendedImage8, "text": "Toing Core and Gults"},
    {"image": Images.recommendedImage9, "text": "Low Impact: Lower Body"},
    {"image": Images.recommendedImage10, "text": "Tabata Bodyweight"},
    {"image": Images.recommendedImage11, "text": "Tabata Dumbbell"},
    {"image": Images.recommendedImage12, "text": "Tabata Kettebell"},
    {"image": Images.recommendedImage13, "text": "Rump Roaster"},
    {"image": Images.recommendedImage14, "text": "Seven Minute"},
    {"image": Images.recommendedImage15, "text": "Six-Pack Challenge"},
    {"image": Images.recommendedImage16, "text": "Toing Core and Gults"},
  ];


  List<Map> exerciseLibraryList = [
    {"image":Images.exerciseLibraryImage1,"text":"180 jump","subText":"Advanced"},
    {"image":Images.exerciseLibraryImage2,"text":"18 - jump Turns","subText":"Advanced"},
    {"image":Images.exerciseLibraryImage3,"text":"2 Hand Wrist Extension","subText":"Beginner"},
    {"image":Images.exerciseLibraryImage4,"text":"Abdominal Crunch","subText":"Beginner"},
    {"image":Images.exerciseLibraryImage5,"text":"Abdominal Crunch ","subText":"Beginner"},
    {"image":Images.exerciseLibraryImage6,"text":"Abdominal Stretch","subText":"Beginner"},
    {"image":Images.exerciseLibraryImage7,"text":"Active Assisted Shoulder","subText":"Rehab & Care - Beginner"},
    {"image":Images.exerciseLibraryImage8,"text":"Active Assisted Shoulder","subText":"Rehab & Care - Beginner"},
    {"image":Images.exerciseLibraryImage9,"text":"Airplane Pose (Left)","subText":"Advanced"},
    {"image":Images.exerciseLibraryImage10,"text":"Airplane Pose (Right)","subText":"Advanced"},
    {"image":Images.exerciseLibraryImage11,"text":"Airplane Alternating (Left) ","subText":"Rehab & Care - Beginner"},
    {"image":Images.exerciseLibraryImage12,"text":"Ankle ABCs (Left) ","subText":"Beginner"},
    {"image":Images.exerciseLibraryImage13,"text":"Ankle ABCs (Right)","subText":"Beginner"},
    {"image":Images.exerciseLibraryImage14,"text":"Ankle Rotation","subText":"Beginner"},
  ];

  List<Map> weekPlanList = [
    {
      "text": "WEEK 1",
      "imageList": [
        {"image":Images.week1Image1,"text":"Week 1, Workout 1: Stretch it out"},
        {"image":Images.week1Image2,"text":"Week 1, Workout 2: Let’s Start Moving"},
        {"image":Images.week1Image3,"text":"Week 1, Workout 3: Stretch Basics"},
      ],
    },
    {
      "text": "WEEK 2",
      "imageList": [
        {"image":Images.week2Image1,"text":"Week 2, Workout 1: Intro to Core"},
        {"image":Images.week2Image2,"text":"Week 1, Workout 2: increased Flexbility"},
        {"image":Images.week2Image3,"text":"Week 1, Workout 3: Yoga for Beginners"},
      ],
    },
    {
      "text": "WEEK 3",
      "imageList": [
        {"image":Images.week3Image1,"text":"Week 2, Workout 1: Intro to Core"},
        {"image":Images.week3Image2,"text":"Week 1, Workout 2: increased Flexbility"},
        {"image":Images.week3Image3,"text":"Week 1, Workout 3: Yoga for Beginners"},
      ],
    },
    {
      "text": "WEEK 4",
      "imageList": [
        {"image":Images.week1Image1,"text":"Week 1, Workout 1: Stretch it out"},
        {"image":Images.week1Image2,"text":"Week 1, Workout 2: Let’s Start Moving"},
        {"image":Images.week1Image3,"text":"Week 1, Workout 3: Stretch Basics"},
      ],
    },
    {
      "text": "WEEK 5",
      "imageList": [
        {"image":Images.week2Image1,"text":"Week 2, Workout 1: Intro to Core"},
        {"image":Images.week2Image2,"text":"Week 1, Workout 2: increased Flexbility"},
        {"image":Images.week2Image3,"text":"Week 1, Workout 3: Yoga for Beginners"},
      ],
    },
    {
      "text": "WEEK 6",
      "imageList": [
        {"image":Images.week3Image1,"text":"Week 2, Workout 1: Intro to Core"},
        {"image":Images.week3Image2,"text":"Week 1, Workout 2: increased Flexbility"},
        {"image":Images.week3Image3,"text":"Week 1, Workout 3: Yoga for Beginners"},
      ],
    }
  ];

  var selectedIndex = 0.obs;
}

class NotificationController extends GetxController{
  List<Map> notificationList = [
    {"text":"Stretching","subText":"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout."},
    {"text":"Cardio","subText":"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout."},
    {"text":"Strength","subText":"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout."},
    {"text":"Yoga","subText":"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout."},
  ];
}
