import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Controller/diet_tip_controller.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:fitness/Widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HaveAnyFoodScreen extends StatelessWidget {
  final DietTipController dietTipController = Get.put(DietTipController());

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: TextWidget.poppinsMediumText(
                  text: "Do You have any Food Allergies?",
                  color: white,
                  fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: TextWidget.poppinsRegularText(
                  color: grey6C6C,
                  text: "Your diet plan will exclude these foods.",
                  fontSize: 12),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              borderRadius: BorderRadius.circular(30),
              onTap: () {
                dietTipController.condition();
                dietTipController.none.value = true;
              },
              child: Obx(
                () => CommonHaveAnyFoodContainer(
                  text: "None",
                  value: dietTipController.none.value,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              color: black3E3E,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {
                    dietTipController.condition();
                    dietTipController.poultry.value = true;
                  },
                  child: Obx(
                        () => CommonHaveAnyFoodContainer(
                      text: "Poultry",
                      value: dietTipController.poultry.value,
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {
                    dietTipController.condition();
                    dietTipController.pork.value = true;
                  },
                  child: Obx(
                        () => CommonHaveAnyFoodContainer(
                      text: "Pork",
                      value: dietTipController.pork.value,
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {
                    dietTipController.condition();
                    dietTipController.egg.value = true;
                  },
                  child: Obx(
                        () => CommonHaveAnyFoodContainer(
                      text: "Egg",
                      value: dietTipController.egg.value,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {
                    dietTipController.condition();
                    dietTipController.lamb.value = true;
                  },
                  child: Obx(
                        () => CommonHaveAnyFoodContainer(
                      text: "Lamb/Mutton",
                      value: dietTipController.lamb.value,
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {
                    dietTipController.condition();
                    dietTipController.beef.value = true;
                  },
                  child: Obx(
                        () => CommonHaveAnyFoodContainer(
                      text: "Beef",
                      value: dietTipController.beef.value,
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {
                    dietTipController.condition();
                    dietTipController.gluten.value = true;
                  },
                  child: Obx(
                        () => CommonHaveAnyFoodContainer(
                      text: "Gluten",
                      value: dietTipController.gluten.value,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {
                    dietTipController.condition();
                    dietTipController.lactose.value = true;
                  },
                  child: Obx(
                        () => CommonHaveAnyFoodContainer(
                      text: "Lactose",
                      value: dietTipController.lactose.value,
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {
                    dietTipController.condition();
                    dietTipController.nuts.value = true;
                  },
                  child: Obx(
                        () => CommonHaveAnyFoodContainer(
                      text: "Nuts",
                      value: dietTipController.nuts.value,
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {
                    dietTipController.condition();
                    dietTipController.soy.value = true;
                  },
                  child: Obx(
                        () => CommonHaveAnyFoodContainer(
                      text: "Soy",
                      value: dietTipController.soy.value,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
