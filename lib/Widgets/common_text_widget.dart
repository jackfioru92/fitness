import 'package:flutter/material.dart';

const String poppinsLightFont = "poppinsLight";
const String poppinsMediumFont = "poppinsMedium";
const String poppinsRegularFont = "poppinsRegular";
const String poppinsSemiBoldFont = "poppinsSemiBold";
const String poppinsBoldFont = "poppinsBold";

class TextWidget{
  static poppinsLightText({String? text,Color? color,double? fontSize,TextAlign? textAlign}){
    return Text(
      text!,
      textAlign: textAlign??TextAlign.start,
      style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontFamily: poppinsLightFont
      ),
    );
  }

  static poppinsBoldText({String? text,Color? color,double? fontSize,TextAlign? textAlign}){
    return Text(
      text!,
      textAlign: textAlign??TextAlign.start,
      style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontFamily: poppinsBoldFont
      ),
    );
  }


  static poppinsMediumText({String? text,Color? color,double? fontSize,TextAlign? textAlign}){
    return Text(
      text!,
      textAlign: textAlign??TextAlign.start,
      style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontFamily: poppinsMediumFont
      ),
    );
  }

  static poppinsRegularText({String? text,Color? color,double? fontSize,TextAlign? textAlign}){
    return Text(
      text!,
      textAlign: textAlign??TextAlign.start,
      style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontFamily: poppinsRegularFont
      ),
    );
  }


  static poppinsSemiBoldText({String? text,Color? color,double? fontSize,TextAlign? textAlign}){
    return Text(
      text!,
      textAlign: textAlign??TextAlign.start,
      style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontFamily: poppinsSemiBoldFont
      ),
    );
  }
}