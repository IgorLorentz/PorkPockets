import 'package:flutter/material.dart';
import 'package:pork_pockets_app/pages/home_page.dart';
import 'package:pork_pockets_app/util/images_base.dart';
import 'package:pork_pockets_app/util/text_base.dart';

class GuidePage extends StatelessWidget {
  const GuidePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(7, 121, 148, 58),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(7, 121, 148, 58),
        flexibleSpace: Image.asset('assets/images/logo_pork_bg.png', fit: BoxFit.cover,),
      ),
      body: ListView(children: [
        Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    
                  ),
                  addImg('assets/images/dogImg.png'),
                  Container(
                    padding: EdgeInsets.all(20),
                    child:
                      FormatedText('Os gastos fixos são aqueles essenciais: energia elétrica, água, moradia, supermercado, transporte, plano de saúde, farmácia. Para entender o que realmente é um gasto essencial, reflita sobre o que pode ser dispensável e o que realmente é fundamental para você.', 20, FontWeight.w100),
                  ),
                  addImg('assets/images/dogImg.png'),
                  Container(
                    padding: EdgeInsets.all(20),
                    child:
                  FormatedText('Tudo o que não entrou na primeira lista e que não é considerado essencial para a sobrevivência pode ser classificado como gasto variável ou dispensável. É o café da manhã na padaria aos domingos, os serviços de streaming que você assina, a TV a cabo, os serviços que você faz fora de casa, como unha, cabelo, massagem, compras online muitas vezes desnecessárias que você faz para aproveitar uma suposta promoção.', 20, FontWeight.w100),
                  ),
                  addImg('assets/images/dogImg.png'),
                  Container(
                    padding: EdgeInsets.all(20),
                    child:
                  FormatedText('Essa é a porcentagem ideal que você reserve da sua renda líquida mensal para viver com tranquilidade e conseguir realizar seus projetos. Poupar significa que você tem dinheiro guardado para te apoiar em momentos de urgência sem precisar recorrer a empréstimos ou linhas de crédito caras, como cheque especial e rotativo do cartão de crédito.', 20, FontWeight.w100),
                  ),
                ],
              )
            ])
      ]), 
    );
  }
}
