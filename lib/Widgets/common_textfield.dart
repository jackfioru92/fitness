import 'package:fitness/Constants/colors.dart';
import 'package:fitness/Widgets/common_text_widget.dart';
import 'package:flutter/material.dart';


class CommonTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final Widget? suffixIcon;
  final bool? obsecureText;
  final TextInputType? textInputType;
  final TextAlign? textAlign;


  CommonTextField(
      {required this.hintText, required this.controller,this.suffixIcon,this.obsecureText,this.textInputType,this.textAlign});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: white,
      style: TextStyle(
          color: white,
          fontSize: 14,
          fontFamily: poppinsRegularFont
      ),
      textAlign: textAlign??TextAlign.start,
      keyboardType: textInputType??TextInputType.text,
      obscureText: obsecureText??false,
      decoration: InputDecoration(
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
        suffixIcon: suffixIcon??SizedBox.shrink(),
        fillColor: black2A2A,
        filled: true,
        isDense: true,
        hintText:hintText,
        hintStyle: TextStyle(
            color: grey6C6C,
            fontSize: 14,
            fontFamily: poppinsRegularFont
        ),
      ),
    );
  }
}
