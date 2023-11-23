import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pork_pockets_app/util/color_util.dart';

AppBar appBar() {
  return AppBar(
    backgroundColor: Paleta.bgColor,
    elevation: 0,
    centerTitle: true,
    title: SvgPicture.asset('assets/images/PorkPockets.svg'),
  );
}
