import 'package:flutter/material.dart';

Text hugeText(String text, {Color fontColor = Colors.white}) {
  return Text(
    text,
    textAlign: TextAlign.justify,
    style: TextStyle(
        color: fontColor,
        fontFamily: "Josefin",
        fontSize: 56,
        fontWeight: FontWeight.bold),
  );
}

Text bigText(String text, {Color fontColor = Colors.white}) {
  return Text(
    text,
    textAlign: TextAlign.justify,
    style: TextStyle(
        color: fontColor,
        fontFamily: "Josefin",
        fontSize: 36,
        fontWeight: FontWeight.bold),
  );
}

Text mediumText(String text, {Color fontColor = Colors.white}) {
  return Text(
    text,
    textAlign: TextAlign.justify,
    style: TextStyle(
        color: fontColor,
        fontFamily: "Josefin",
        fontSize: 24,
        fontWeight: FontWeight.bold),
  );
}

Text smallText(String text, FontWeight fontWeight,
    {Color fontColor = Colors.white}) {
  return Text(
    text,
    textAlign: TextAlign.justify,
    style: TextStyle(
        color: fontColor,
        fontFamily: "Josefin",
        fontSize: 12,
        fontWeight: fontWeight),
  );
}

Text FormatedText(String text, double fontSize, FontWeight fontWeight,
    {Color fontColor = Colors.white}) {
  return Text(
    text,
    textAlign: TextAlign.justify,
    style: TextStyle(
        color: fontColor,
        fontFamily: "Josefin",
        fontSize: fontSize,
        fontWeight: fontWeight),
  );
}
