// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pork_pockets_app/util/appbar.dart';
import 'package:pork_pockets_app/util/color_util.dart';
import 'package:pork_pockets_app/util/forms_util.dart';
import 'package:pork_pockets_app/util/text_util.dart';

class NovaMeta extends StatefulWidget {
  const NovaMeta({super.key});

  @override
  State<NovaMeta> createState() => _NovaMetaState();
}

class _NovaMetaState extends State<NovaMeta> {
  final _novaMetaFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Paleta.bgColor,
      appBar: appBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/images/flying_pig.svg'),
              const SizedBox(height: 30),
              Form(
                  key: _novaMetaFormKey,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      width: 400,
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        children: [
                          bigText("Nova meta", fontColor: Colors.black),
                          const SizedBox(height: 50),
                          mediumText("Insira um nome:",
                              fontColor: Colors.black),
                          ValueForm(TextInputAction.next, false),
                          const SizedBox(height: 30),
                          mediumText("Insira um valor:",
                              fontColor: Colors.black),
                          currencyForm(TextInputAction.next, false),
                          const SizedBox(height: 50),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Paleta.azulEscurao,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: mediumText(
                                  "Criar meta",
                                ),
                              )),
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
