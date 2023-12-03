import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pork_pockets_app/models/meta.dart';
import 'package:pork_pockets_app/models/pessoa.dart';
import 'package:pork_pockets_app/util/appbar.dart';
import 'package:pork_pockets_app/util/color_util.dart';
import 'package:pork_pockets_app/util/forms_util.dart';
import 'package:pork_pockets_app/util/text_util.dart';

class NovaMeta extends StatefulWidget {
  final Pessoa? user;
  final Function()? onMetasAdded;

  const NovaMeta({super.key, this.user, this.onMetasAdded});

  @override
  State<NovaMeta> createState() => _NovaMetaState();
}

class _NovaMetaState extends State<NovaMeta> {
  final _novaMetaFormKey = GlobalKey<FormState>();
  final fieldNome = TextEditingController();
  final fieldValor = TextEditingController();

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
                          nameForm(TextInputAction.next, false),
                          const SizedBox(height: 30),
                          mediumText("Insira um valor:",
                              fontColor: Colors.black),
                          currencyForm(TextInputAction.next, false),
                          const SizedBox(height: 50),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  _addMeta(widget.user!);
                                  Navigator.pop(context);
                                });
                              },
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

  TextFormField nameForm(
    TextInputAction textInputAction,
    bool autofocus,
  ) {
    return TextFormField(
      validator: (nome) => validar.campoNome(nome.toString()),
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.text,
      autofocus: autofocus,
      controller: fieldNome,
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

  TextFormField currencyForm(TextInputAction textInputAction, bool autofocus) {
    return TextFormField(
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.number,
      autofocus: autofocus,
      controller: fieldValor,
      decoration: const InputDecoration(
          hintText: "R\$ 0.00",
          border: OutlineInputBorder(borderSide: BorderSide()),
          fillColor: Colors.white,
          filled: true),
      style: const TextStyle(
        fontFamily: "Josefin",
        fontWeight: FontWeight.bold,
      ),
    );
  }

  void _addMeta(Pessoa user) {
    user.setMetas(
      Meta(nome: fieldNome.text, valor: double.parse(fieldValor.text)));

    widget.onMetasAdded!();
  }
}
