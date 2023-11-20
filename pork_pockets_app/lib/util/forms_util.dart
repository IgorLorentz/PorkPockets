import 'package:flutter/material.dart';

TextFormField NameForm(TextInputAction textInputAction, bool autofocus) 
{
  return TextFormField
  (
    textInputAction: textInputAction,
    keyboardType: TextInputType.text,
    autofocus: autofocus,

    decoration: const InputDecoration
    (
      hintText: "Nome Completo",
      border: OutlineInputBorder(borderSide: BorderSide()),
      fillColor: Colors.white,
      filled: true,
    ),

    style: const TextStyle
    (
      fontFamily: "Josefin", 
      fontWeight: FontWeight.bold,
    ),
  );
}

TextFormField EmailForm(TextInputAction textInputAction, bool autofocus) 
{
  return TextFormField
  (
    textInputAction: textInputAction,
    keyboardType: TextInputType.emailAddress,
    autofocus: autofocus,
    
    decoration: const InputDecoration
    (
      hintText: "seu_email@mail.com",
      border: OutlineInputBorder(borderSide: BorderSide()),
      fillColor: Colors.white,
      filled: true,
    ),

    style: const TextStyle
    (
      fontFamily: "Josefin", 
      fontWeight: FontWeight.bold,
    ),
  );
}