import 'package:flutter/material.dart';

ElevatedButton SimpleButton(Function onPressed) 
{
  return ElevatedButton
  (
      onPressed: () => onPressed,
      style: ElevatedButton.styleFrom
      (
        backgroundColor: Paleta.azulEscurao,
      ),
      child: FormatedText("Criar conta", 24, FontWeight.bold));
}
