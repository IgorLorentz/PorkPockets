import 'package:flutter/material.dart';

Container addImg(String path,{double largura = 100, double altura= 100}) {
  return Container(
    margin: const EdgeInsets.all(10),
    height: altura,
    width: largura,
    child: Image.asset(
      path,
      fit: BoxFit.cover,
    ),
  );
}
