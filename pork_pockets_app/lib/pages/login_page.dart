import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pork_pockets_app/pages/pessoa.dart';
import 'package:pork_pockets_app/util/appbar.dart';
import 'package:pork_pockets_app/util/color_util.dart';
import 'package:pork_pockets_app/util/footer.dart';
import 'package:pork_pockets_app/util/forms_util.dart';
import 'package:pork_pockets_app/util/pages.dart';
import 'package:pork_pockets_app/util/text_util.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordObscured = true;
  final _formKey = GlobalKey<FormState>();
  final Pessoa usuario = Pessoa();

  @override
  Widget build(BuildContext context) {
    final pessoa = ModalRoute.of(context)!.settings.arguments as Pessoa;
    return Scaffold(
      backgroundColor: Paleta.bgColor,
      appBar: appBar(),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SvgPicture.asset('assets/images/flying_pig.svg'),
                    const SizedBox(
                      height: 62,
                    ),
                    FormatedText("Bem-Vindo de volta!", 36, FontWeight.bold),
                    const SizedBox(height: 22),
                    Row(
                      children: [
                        FormatedText("Insira seu e-mail:", 20, FontWeight.bold),
                      ],
                    ),
                    EmailForm(TextInputAction.next, true),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        FormatedText("Insira uma senha:", 20, FontWeight.bold),
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
                            onPressed: () {},
                          )),
                      style: const TextStyle(
                        fontFamily: "Josefin",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FormatedText('Esqueceu a senha', 20, FontWeight.normal,
                            fontColor: Paleta.azulEscurao),
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
                        child: FormatedText("Login", 24, FontWeight.bold)),
                    const SizedBox(height: 25),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/register");
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(70, 1, 31, 38),
                        ),
                        child:
                            FormatedText("Cadastre-se", 24, FontWeight.bold)),
                  ],
                ),
              ),
              Footer()
            ],
          ),
        ),
      ),
    );
  }

  void _onSubmit(inContext) {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      Navigator.pop;
    } else {
      showDialog(
        context: inContext,
        barrierDismissible: false,
        builder: (inContext) {
          return WillPopScope(
            onWillPop: () async => false,
            child: AlertDialog(
              title: Text('Dados Inválidos!'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(inContext);
                  },
                  child: Text('Cancelar'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(inContext);
                  },
                  child: Text('OK'),
                ),
              ],
            ),
          );
        },
      );
    }
  }
}
