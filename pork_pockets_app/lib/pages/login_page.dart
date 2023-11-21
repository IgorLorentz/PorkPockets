import 'package:flutter/material.dart';
import 'package:pork_pockets_app/pages/register_page.dart';
import 'package:pork_pockets_app/util/color_util.dart';
import 'package:pork_pockets_app/util/footer.dart';
import 'package:pork_pockets_app/util/forms_util.dart';
import 'package:pork_pockets_app/util/svg_util.dart';
import 'package:pork_pockets_app/util/text_util.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordObscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Paleta.bgColor,
      appBar: AppBar(
        backgroundColor: Paleta.bgColor,
        flexibleSpace: Image.asset(
          'assets/images/logo_pork_bg.png',
          fit: BoxFit.none,
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(height: 50),
                    FormatedText("Bem-Vindo de volta!", 36, FontWeight.bold),
                    SizedBox(height: 35),
                    Row(
                      children: [
                        FormatedText("Insira seu e-mail:", 20, FontWeight.bold),
                      ],
                    ),
                    EmailForm(TextInputAction.next, false),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        FormatedText("Insira uma senha:", 20, FontWeight.bold),
                      ],
                    ),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.number,
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
                        FormatedText('Esqueceu a senha', 20, FontWeight.normal,
                            fontColor: Paleta.azulEscurao),
                      ],
                    ),
                    SizedBox(height: 25),
                    ElevatedButton(
                        onPressed: () {
                          print("Botão clicado");
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Paleta.azulEscurao,
                        ),
                        child: FormatedText("Login", 24, FontWeight.bold)),
                    SizedBox(height: 25),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RegisterPage(),
                              ));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(70, 1, 31, 38),
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
}
