import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:flutter/material.dart';

class WhatsYourNameScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            TextWidget.poppinsRegularText(
              text: "Hey there!",
              color: white,
              fontSize: 18,
            ),
            SizedBox(
              height: 10,
            ),
            TextWidget.poppinsRegularText(
              text:
                  "We’re happy that you’ve taken the fist step towards a healthier you. We need a few details to kickstart your journey.",
              color: white,
              fontSize: 14,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            TextWidget.poppinsMediumText(
                text: "What is your name?", color: white, fontSize: 18),
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
              child: TextFormField(
                controller: nameController,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: white,
                    fontSize: 14,
                    fontFamily: poppinsRegularFont
                ),
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: "Enter your name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: black2A2A,width: 1)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: black2A2A,width: 1)
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: black2A2A,width: 1)
                  ),
                  fillColor: black2A2A,
                  filled: true,
                  isDense: true,
                  hintStyle: TextStyle(
                      color: grey6C6C,
                      fontSize: 14,
                      fontFamily: poppinsRegularFont
                  ),
                ),
              ),
            )
            /*CommonTextField(
              hintText: "Enter your name",
              controller: nameController,
              textInputType: TextInputType.name,
              textAlign: TextAlign.start,
            )*/
          ],
        ),
      ),
    );
  }
}
