import 'package:flutter/material.dart';
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
  final _formKey = GlobalKey<FormState>();
  bool passwordObscured = true;

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      backgroundColor: Paleta.bgColor,

      appBar: AppBar
      (
        backgroundColor: Paleta.bgColor,

        title: const Text("PorkPocket\$"),
        centerTitle: true,
      ),

      body: SingleChildScrollView
      (
        child: Form
        (
          child: Padding
          (
            padding: const EdgeInsets.all(16.0),
          
            child: Column
            (
              children: 
              [
                SizedBox(height: 50),
            
                FormatedText("Insira seus dados", 36, FontWeight.bold),
            
                SizedBox(height: 35),
            
                FormatedText("Insira seu nome completo", 20, FontWeight.bold),
            
                NameForm(TextInputAction.next, true),

                SizedBox(height: 15),

                FormatedText("Insira seu e-mail", 20, FontWeight.bold),

                EmailForm(TextInputAction.next, false),

                SizedBox(height: 15),

                FormatedText("Insira uma senha", 20, FontWeight.bold),

                TextFormField
                (
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  obscureText: passwordObscured,
                
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
                ),

                SizedBox(height: 15),

                FormatedText("Confirme sua senha", 20, FontWeight.bold),

                TextFormField
                (
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.number,
                  obscureText: passwordObscured,
                
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
                ),

                SizedBox(height: 75),

                ElevatedButton
                (
                  onPressed: () {print("Botão clicado");}, 
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
}