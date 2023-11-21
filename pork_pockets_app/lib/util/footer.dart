import 'package:flutter/material.dart';
import 'package:pork_pockets_app/util/color_util.dart';
import 'package:pork_pockets_app/util/text_util.dart';

Container Footer() {
  return Container(
    height: 65,
    width: double.infinity,
    color: Paleta.azulEscurao,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FormatedText('PorkPocket\$ 2023', 15, FontWeight.normal),
        const SizedBox(width: 3),
        const Icon(
          Icons.copyright,
          color: Colors.white,
        ),
      ],
    ),
  );
}
