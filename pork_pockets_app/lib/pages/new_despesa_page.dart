// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pork_pockets_app/models/despesas.dart';
import 'package:pork_pockets_app/repositories/despesas_repository.dart';
import 'package:pork_pockets_app/util/appbar.dart';
import 'package:pork_pockets_app/util/color_util.dart';
import 'package:pork_pockets_app/util/forms_util.dart';
import 'package:pork_pockets_app/util/text_util.dart';

class NovaDespesa extends StatefulWidget {
  const NovaDespesa({super.key});

  @override
  State<NovaDespesa> createState() => _NovaDespesaState();
}

class _NovaDespesaState extends State<NovaDespesa> {
  final _novaDespesaFormKey = GlobalKey<FormState>();
  final nomeController = TextEditingController();
  final valorController = TextEditingController();

  @override
  void dispose() {
    nomeController.dispose();
    valorController.dispose();
    super.dispose();
  }

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
              const SizedBox(height: 30),
              SvgPicture.asset(
                'assets/images/flying_pig.svg',
                width: 150,
              ),
              const SizedBox(height: 30),
              Form(
                  key: _novaDespesaFormKey,
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
                          bigText("Nova despesa", fontColor: Colors.black),
                          const SizedBox(height: 50),
                          mediumText("Insira um nome:",
                              fontColor: Colors.black),
                          despesaForm(
                              TextInputAction.next, false, nomeController),
                          const SizedBox(height: 30),
                          mediumText("Insira um valor:",
                              fontColor: Colors.black),
                          despesaForm(
                              TextInputAction.next, false, valorController),
                          const SizedBox(height: 50),
                          ElevatedButton(
                              onPressed: () {
                                DespesasRepository.addDespesaFix(Despesas(
                                    nome: nomeController.text,
                                    valor: double.parse(valorController.text)));
                                print(DespesasRepository.despesaFix);
                                Navigator.pop(context);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Paleta.azulEscurao,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: mediumText(
                                  "Criar despesa",
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

  void novaFixa() => DespesasRepository.despesaFix.add(Despesas(
      nome: nomeController.text, valor: double.parse(valorController.text)));

  void novaVariavel() => DespesasRepository.despesaVar.add(Despesas(
      nome: nomeController.text, valor: double.parse(valorController.text)));
}
