import 'package:flutter/material.dart';
import 'package:pork_pockets_app/util/text_util.dart';
import 'package:pork_pockets_app/util/color_util.dart';

ElevatedButton SimpleButton(Function onPressed) {
  return ElevatedButton(
      onPressed: () => onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Paleta.azulEscurao,
      ),
      child: FormatedText("Criar conta", 24, FontWeight.bold));
}
