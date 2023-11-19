import 'package:flutter/material.dart';

Text FormatedText(String text, double fontSize, FontWeight fontWeight, {Color fontColor = Colors.white}) 
{
  return Text
  (
    text,
    style: TextStyle
    (
      color: fontColor,
      fontFamily: "Josefin", fontSize: fontSize, fontWeight: fontWeight
    ),
  );
}
