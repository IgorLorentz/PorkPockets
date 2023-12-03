// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pork_pockets_app/repositories/users_repository.dart';
import 'package:pork_pockets_app/util/appbar.dart';
import 'package:pork_pockets_app/util/color_util.dart';
import 'package:pork_pockets_app/util/footer.dart';
import 'package:pork_pockets_app/util/forms_util.dart';
import 'package:pork_pockets_app/util/text_util.dart';
import '../pages/esqueceu_senha.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordObscured = true;
  bool validUser = false;
  final users = UsersRepository.instance.user;
  final _formKey = GlobalKey<FormState>();
  final fieldEmail = TextEditingController();
  final fieldSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Paleta.bgColor,
      appBar: appBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      SvgPicture.asset('images/flying_pig.svg'),
                      const SizedBox(
                        height: 62,
                      ),
                      FormatedText("Bem-Vindo de volta!", 36, FontWeight.bold),
                      const SizedBox(height: 22),
                      Row(
                        children: [
                          FormatedText(
                              "Insira seu e-mail:", 20, FontWeight.bold),
                        ],
                      ),
                      EmailFormController(
                          TextInputAction.next, true, fieldEmail),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          FormatedText(
                              "Insira sua senha:", 20, FontWeight.bold),
                        ],
                      ),
                      TextFormField(
                        onFieldSubmitted: (value) {
                          _onSubmit(context);
                        },
                        validator: (senha) =>
                            validar.campoSenha(senha.toString()),
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.number,
                        autofocus: false,
                        obscureText: passwordObscured,
                        controller: fieldSenha,
                        decoration: InputDecoration(
                            hintText: "Password",
                            border: const OutlineInputBorder(
                                borderSide: BorderSide()),
                            fillColor: Colors.white,
                            filled: true,
                            suffixIcon: IconButton(
                              icon: Icon(passwordObscured
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              onPressed: () {
                                setState(
                                    () => passwordObscured = !passwordObscured);
                              },
                            )),
                        style: const TextStyle(
                          fontFamily: "Josefin",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const EsqueceuSenha(),
                                  ),
                                );
                              },
                              child: FormatedText(
                                  'Esqueceu a senha', 20, FontWeight.bold,
                                  fontColor: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      ElevatedButton(
                          onPressed: () {
                            _onSubmit(context);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Paleta.azulEscurao,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: mediumText("Login", fontColor: Colors.white),
                          )),
                      const SizedBox(height: 15),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/register");
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(70, 1, 31, 38),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: mediumText("Cadastre-se",
                                fontColor: Colors.white),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Footer(),
    );
  }

  void _onSubmit(inContext) {
    if (_formKey.currentState!.validate()) {
      for (var user in users) {
        if (user.email == fieldEmail.text && user.senha == fieldSenha.text) {
          validUser = true;
          Navigator.pushNamed(context, "/home", arguments: user);
          break;
        }
      }
      if (!validUser) {
        alerta(
            inContext,
            FormatedText("Usuário não existe!", 20, FontWeight.bold,
                fontColor: Paleta.dangerous));
      }
    } else {
      alerta(
          inContext,
          FormatedText("Formulário inválido!", 20, FontWeight.bold,
              fontColor: Paleta.dangerous));
    }
  }

  Future<dynamic> alerta(inContext, erro) {
    return showDialog(
      context: inContext,
      barrierDismissible: false,
      builder: (inContext) {
        return WillPopScope(
          onWillPop: () async => false,
          child: AlertDialog(
            title: erro,
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
  }
}
