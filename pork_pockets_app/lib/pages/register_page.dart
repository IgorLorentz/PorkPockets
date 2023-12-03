import 'package:flutter/material.dart';
import 'package:pork_pockets_app/models/pessoa.dart';
import 'package:pork_pockets_app/repositories/users_repository.dart';
import 'package:pork_pockets_app/util/appbar.dart';
import 'package:pork_pockets_app/util/color_util.dart';
import 'package:pork_pockets_app/util/forms_util.dart';
import 'package:pork_pockets_app/util/text_util.dart';

class RegisterPage extends StatefulWidget 
{
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> 
{
  bool passwordObscured = true;
  late Pessoa user;
  final users = UsersRepository.instance.user;
  final _formKey = GlobalKey<FormState>();
  final fieldNome = TextEditingController();
  final fieldEmail = TextEditingController();
  final fieldSenha = TextEditingController();

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      backgroundColor: Paleta.bgColor,

      appBar: appBar(),

      body: SingleChildScrollView
      (
        child: Form
        (
          key: _formKey,
          child: Padding
          (
            padding: const EdgeInsets.all(16.0),
          
            child: Column
            (
              children: 
              [
                const SizedBox(height: 50),
            
                FormatedText("Insira seus dados", 36, FontWeight.bold),
            
                const SizedBox(height: 35),
            
                SizedBox(width: double.infinity, child: FormatedText("Insira seu nome completo", 20, FontWeight.bold)),
            
                nameFormRegister(TextInputAction.next, true),

                const SizedBox(height: 15),

                SizedBox(width: double.infinity, child: FormatedText("Insira seu e-mail", 20, FontWeight.bold)),

                emailFormRegister(TextInputAction.next, false),

                const SizedBox(height: 15),

                SizedBox(width: double.infinity, child: FormatedText("Insira uma senha", 20, FontWeight.bold)),

                passwordForm(TextInputAction.next),

                const SizedBox(height: 15),

                SizedBox(width: double.infinity, child: FormatedText("Confirme sua senha", 20, FontWeight.bold)),

                passwordForm(TextInputAction.done),

                const SizedBox(height: 75),

                ElevatedButton
                (
                  onPressed: () {_onSubmit(context);}, 
                  style: ElevatedButton.styleFrom
                  (
                    backgroundColor: Paleta.azulEscurao,
                  ),
                  child: FormatedText("Criar conta", 24, FontWeight.bold)
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextFormField passwordForm(TextInputAction textInputAction) {
    return TextFormField
              (
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.number,
                obscureText: passwordObscured,
                validator: (senha) => validar.campoSenha(senha.toString()),
                controller: fieldSenha,

                decoration: InputDecoration
                (
                  hintText: "Password",
                  border: const OutlineInputBorder(borderSide: BorderSide()),
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: IconButton
                  (
                    icon: Icon(passwordObscured ? Icons.visibility_off : Icons.visibility),
                    onPressed: () 
                    {
                      setState(() => passwordObscured = !passwordObscured);
                    },
                  )
                ),

                style: const TextStyle
                (
                  fontFamily: "Josefin", 
                  fontWeight: FontWeight.bold,
                ),
              );
  }

  TextFormField emailFormRegister(TextInputAction textInputAction, bool autofocus) 
  {
    return TextFormField(
      validator: (email) => validar.campoEmail(email.toString()),
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.emailAddress,
      autofocus: autofocus,
      controller: fieldEmail,
      decoration: const InputDecoration(
        hintText: "seu_email@mail.com",
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

TextFormField nameFormRegister(TextInputAction textInputAction, bool autofocus,) 
{
  return TextFormField(
    validator: (nome) => validar.campoNome(nome.toString()),
    textInputAction: TextInputAction.next,
    keyboardType: TextInputType.text,
    autofocus: autofocus,
    controller: fieldNome,
    decoration: const InputDecoration(
      hintText: "Nome Completo",
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

  void _onSubmit(inContext) 
  {
    if (_formKey.currentState!.validate()) 
    {
      user = Pessoa(nome: fieldNome.text, email: fieldEmail.text, senha: fieldSenha.text);
      users.add(user);
      alerta(inContext, FormatedText("Usuário criado com sucesso", 20, FontWeight.bold, fontColor: Paleta.verde));
      Navigator.pushNamed(context, "/", );
    } 
    else 
    {
      alerta(inContext, FormatedText("Formulário inválido!", 20, FontWeight.bold, fontColor: Paleta.dangerous));
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