import 'package:flutter/material.dart';
import 'package:pork_pockets_app/util/color_util.dart';
import 'package:pork_pockets_app/util/svg_util.dart';
import 'package:pork_pockets_app/util/text_util.dart';

class GuidePage extends StatelessWidget {
  const GuidePage({Key? key}) : super(key: key);
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
      body: ListView(children: [
        Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(50),
                    child: FormatedText('Guia do Usuário', 36, FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20) ,
                    child: 
                      Row(
                        children: [
                          Title(color: Colors.white, child: FormatedText('Método 50-30-20', 20, FontWeight.bold)),
                        ],
                      ),
                    
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: FormatedText(
                        'Nós utilizamos o método 50-30-20 para te auxiliar a administrar suas finanças. A ideia é dividir a renda líquida mensal em três partes (50%, 30% e 20%), considerando as despesas fixas, despesas variáveis e o dinheiro que você vai poupar.',
                        20,
                        FontWeight.w400),
                  ),

                  Container(),
                  addSvg('assets/images/50_porco.svg'),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: FormatedText(
                        'Os gastos fixos são aqueles essenciais: energia elétrica, água, moradia, supermercado, transporte, plano de saúde, farmácia. Para entender o que realmente é um gasto essencial, reflita sobre o que pode ser dispensável e o que realmente é fundamental para você.',
                        20,
                        FontWeight.w400),
                  ),

                  addSvg('assets/images/30_porco.svg'),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: FormatedText(
                        'Tudo o que não entrou na primeira lista e que não é considerado essencial para a sobrevivência pode ser classificado como gasto variável ou dispensável. É o café da manhã na padaria aos domingos, os serviços de streaming que você assina, a TV a cabo, os serviços que você faz fora de casa, como unha, cabelo, massagem, compras online muitas vezes desnecessárias que você faz para aproveitar uma suposta promoção.',
                        20,
                        FontWeight.w400),
                  ),

                  addSvg('assets/images/20_porco.svg'),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: FormatedText(
                        'Essa é a porcentagem ideal que você reserve da sua renda líquida mensal para viver com tranquilidade e conseguir realizar seus projetos. Poupar significa que você tem dinheiro guardado para te apoiar em momentos de urgência sem precisar recorrer a empréstimos ou linhas de crédito caras, como cheque especial e rotativo do cartão de crédito.',
                        20,
                        FontWeight.w400),
                  ),
                ],
              )
            ])
      ]),
    );
  }
}
