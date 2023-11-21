import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Container addSvg(String path,{double largura = 100, double altura= 100}) {
  return Container(
    margin: EdgeInsets.all(10),
    height: altura,
    width: largura,
    child: SvgPicture.asset(
      path,
      fit: BoxFit.cover,
    ),
  );
}