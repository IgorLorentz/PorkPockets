import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pork_pockets_app/util/appbar.dart';
import 'package:pork_pockets_app/util/color_util.dart';
import 'package:pork_pockets_app/util/forms_util.dart';
import 'package:pork_pockets_app/util/text_util.dart';

class EsqueceuSenha extends StatefulWidget {
  const EsqueceuSenha({super.key});

  @override
  State<EsqueceuSenha> createState() => _EsqueceuSenhaState();
}

class _EsqueceuSenhaState extends State<EsqueceuSenha> {
  final _senhaFormKey = GlobalKey<FormState>();

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
                  key: _senhaFormKey,
                  child: Center(
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bigText("Recuperar senha", fontColor: Colors.black),
                            const SizedBox(height: 30),
                            Row(children: [
                              mediumText("Insira seu e-mail:",
                                  fontColor: Colors.black),
                            ]),
                            EmailForm(TextInputAction.next, true),
                            const SizedBox(height: 30),
                            ElevatedButton(
                                onPressed: () {
                                  const snackBar = SnackBar(
                                    content: Text(
                                        "Um e-mail de confirmação foi enviado para você!"),
                                  );
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                  Navigator.pop(context);
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Paleta.azulEscurao,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: mediumText(
                                    "Recuperar",
                                  ),
                                )),
                          ],
                        ),
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
