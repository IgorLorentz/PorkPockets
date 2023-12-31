// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:pork_pockets_app/util/appbar.dart';
import 'package:pork_pockets_app/util/color_util.dart';
import 'package:pork_pockets_app/util/text_util.dart';

class EditMetaPage extends StatefulWidget {
  const EditMetaPage({super.key});

  @override
  State<EditMetaPage> createState() => _EditMetaPageState();
}

class _EditMetaPageState extends State<EditMetaPage> {
  bool passwordObscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Paleta.bgColor,
      appBar: appBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Form(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        const SizedBox(height: 50),
                        FormatedText("Editar Meta", 36, FontWeight.bold,
                            fontColor: Paleta.azulEscurao),
                        const SizedBox(height: 35),
                        Row(
                          children: [
                            FormatedText(
                                "Insira um novo nome", 20, FontWeight.bold,
                                fontColor: Paleta.azulEscurao),
                          ],
                        ),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                            hintText: "Nome da meta",
                            border:
                                OutlineInputBorder(borderSide: BorderSide()),
                            fillColor: Color.fromARGB(200, 220, 220, 220),
                            filled: true,
                          ),
                          style: const TextStyle(
                            fontFamily: "Josefin",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            FormatedText(
                                "Insira um novo valor", 20, FontWeight.bold,
                                fontColor: Paleta.azulEscurao),
                          ],
                        ),
                        TextFormField(
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            hintText: "Valor",
                            border:
                                OutlineInputBorder(borderSide: BorderSide()),
                            fillColor: Color.fromARGB(200, 220, 220, 220),
                            filled: true,
                          ),
                          style: const TextStyle(
                            fontFamily: "Josefin",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 15),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Paleta.azulEscurao,
                            ),
                            child:
                                FormatedText("Finalizar", 24, FontWeight.bold)),
                        const SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (inContext) {
                        return WillPopScope(
                          onWillPop: () async => false,
                          child: AlertDialog(
                            title: const Text('Deseja mesmo continuar?'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(inContext);
                                },
                                child: const Text('Cancelar'),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(inContext);
                                },
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Paleta.dangerous,
                  ),
                  child: FormatedText("Excluir", 24, FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}
