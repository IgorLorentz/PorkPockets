import 'package:flutter/material.dart';

TextFormField NameForm(TextInputAction textInputAction, bool autofocus) {
  return TextFormField(
    textInputAction: textInputAction,
    keyboardType: TextInputType.text,
    autofocus: autofocus,
    decoration: const InputDecoration(
      hintText: "Nome Completo",
      border: OutlineInputBorder(borderSide: BorderSide()),
      fillColor: Colors.white,
      filled: true,
    ),
    style: const TextStyle(
      fontFamily: "Josefin",
      fontWeight: FontWeight.bold,
    ),
  );
}

TextFormField EmailForm(TextInputAction textInputAction, bool autofocus) {
  return TextFormField(
    textInputAction: textInputAction,
    keyboardType: TextInputType.emailAddress,
    autofocus: autofocus,
    decoration: const InputDecoration(
      hintText: "seu_email@mail.com",
      border: OutlineInputBorder(borderSide: BorderSide()),
      fillColor: Colors.white,
      filled: true,
    ),
    style: const TextStyle(
      fontFamily: "Josefin",
      fontWeight: FontWeight.bold,
    ),
  );
}

TextFormField passwordForm(
    TextInputAction textInputAction, bool autofocus, bool passwordObscured) {
  return TextFormField(
    textInputAction: TextInputAction.done,
    keyboardType: TextInputType.number,
    autofocus: autofocus,
    obscureText: passwordObscured,
    decoration: InputDecoration(
        hintText: "Password",
        border: const OutlineInputBorder(borderSide: BorderSide()),
        fillColor: Colors.white,
        filled: true,
        suffixIcon: IconButton(
          icon:
              Icon(passwordObscured ? Icons.visibility_off : Icons.visibility),
          onPressed: () {},
        )),
    style: const TextStyle(
      fontFamily: "Josefin",
      fontWeight: FontWeight.bold,
    ),
  );
}

TextFormField currencyForm(TextInputAction textInputAction, bool autofocus) {
  return TextFormField(
    textInputAction: TextInputAction.next,
    keyboardType: TextInputType.number,
    autofocus: autofocus,
    decoration: const InputDecoration(
        hintText: "R\$ 0,00",
        border: OutlineInputBorder(borderSide: BorderSide()),
        fillColor: Colors.white,
        filled: true),
    style: const TextStyle(
      fontFamily: "Josefin",
      fontWeight: FontWeight.bold,
    ),
  );
}

TextFormField dateForm(TextInputAction textInputAction, bool autofocus) {
  return TextFormField(
    textInputAction: TextInputAction.next,
    keyboardType: TextInputType.datetime,
    autofocus: autofocus,
    decoration: const InputDecoration(
        hintText: "__/__/____",
        border: OutlineInputBorder(borderSide: BorderSide()),
        fillColor: Colors.white,
        filled: true),
    style: const TextStyle(
      fontFamily: "Josefin",
      fontWeight: FontWeight.bold,
    ),
  );
}

TextFormField ValueForm(TextInputAction textInputAction, bool autofocus) {
  return TextFormField(
    textInputAction: textInputAction,
    keyboardType: TextInputType.number,
    autofocus: autofocus,
    decoration: const InputDecoration(
      border: OutlineInputBorder(borderSide: BorderSide()),
      fillColor: Colors.white,
      filled: true,
    ),
    style: const TextStyle(
      fontFamily: "Josefin",
      fontWeight: FontWeight.bold,
    ),
  );
}
