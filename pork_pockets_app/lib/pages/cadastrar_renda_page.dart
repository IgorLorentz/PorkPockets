import 'package:flutter/material.dart';
import 'package:pork_pockets_app/models/pessoa.dart';
import 'package:pork_pockets_app/util/appbar.dart';
import 'package:pork_pockets_app/util/color_util.dart';
import 'package:pork_pockets_app/util/forms_util.dart';
import 'package:pork_pockets_app/util/text_util.dart';

class CadastraRenda extends StatefulWidget {
  final Function()? onEdited;
  final Pessoa? user;
  const CadastraRenda({super.key, this.user, this.onEdited});

  @override
  State<CadastraRenda> createState() => _CadastraRendaState();
}

class _CadastraRendaState extends State<CadastraRenda> {
  final _rendaFormKey = GlobalKey<FormState>();
  final fieldSalario = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Paleta.bgColor,
      appBar: appBar(),

      body: Center(
        child: SingleChildScrollView(
            child: Form(
                key: _rendaFormKey,

                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    width: 400,

                    child: Column(children: [
                      FormatedText("Insira seu novo salário!", 26, FontWeight.bold),
                      
                      const SizedBox(height: 50),
                      
                      mediumText("Seu salário", fontColor: Colors.black),
                      
                      ValueFormController(
                          TextInputAction.next, false, fieldSalario),
                      
                      const SizedBox(height: 30),
                      
                      ElevatedButton(
                          onPressed: () {
                            widget.user!.setSlario(double.parse(fieldSalario.text));
                            widget.onEdited!();
                            Navigator.pop(context);
                          },

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