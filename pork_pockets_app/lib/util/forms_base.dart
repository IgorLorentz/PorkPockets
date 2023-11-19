import 'package:flutter/material.dart';

TextFormField NameForm() 
{
  return TextFormField
  (
    textInputAction: TextInputAction.next,
    keyboardType: TextInputType.text,
    autofocus: true,

    decoration: const InputDecoration
    (
      hintText: "Nome Completo",
      border: OutlineInputBorder(borderSide: BorderSide()),
    ),
  );
}

TextFormField EmailForm() 
{
  return TextFormField
  (
    textInputAction: TextInputAction.next,
    keyboardType: TextInputType.emailAddress,
    
    decoration: const InputDecoration
    (
      hintText: "seu_email@mail.com",
      border: OutlineInputBorder(borderSide: BorderSide()),
    ),
  );
}