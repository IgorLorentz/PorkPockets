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
                SizedBox(height: 70),
            
                FormatedText("Insira seus dados", 36, FontWeight.bold),
            
                SizedBox(height: 35),
            
                FormatedText("Insira seu nome completo", 20, FontWeight.bold),
            
                NameForm(),

                SizedBox(height: 15),

                FormatedText("Insira seu e-mail", 20, FontWeight.bold),

                EmailForm(),

                SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}