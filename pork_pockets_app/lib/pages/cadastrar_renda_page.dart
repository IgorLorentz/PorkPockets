// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:pork_pockets_app/util/color_util.dart';
import 'package:pork_pockets_app/util/forms_util.dart';
import 'package:pork_pockets_app/util/text_util.dart';

class CadastraRenda extends StatefulWidget {
  const CadastraRenda({super.key});

  @override
  State<CadastraRenda> createState() => _CadastraRendaState();
}

class _CadastraRendaState extends State<CadastraRenda> {
  final _rendaFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Paleta.bgColor,
      appBar: AppBar(
        backgroundColor: Paleta.bgColor,
        title: const Text("PorkPocket\$"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
            child: Form(
                key: _rendaFormKey,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    width: 400,
                    child: Column(children: [
                      bigText("Insira seus dados!"),
                      const SizedBox(height: 50),
                      mediumText("Seu salário", fontColor: Colors.black),
                      currencyForm(TextInputAction.next, false),
                      const SizedBox(height: 30),
                      mediumText("Data de pagamento", fontColor: Colors.black),
                      dateForm(TextInputAction.next, false),
                      const SizedBox(height: 30),
                      mediumText("Confirme sua senha", fontColor: Colors.black),
                      passwordForm(TextInputAction.next, false, true),
                      const SizedBox(height: 50),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Paleta.azulEscurao,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: mediumText(
                              "Atualizar",
                            ),
                          )),
                    ]),
                  ),
                ))),
      ),
    );
  }
}
