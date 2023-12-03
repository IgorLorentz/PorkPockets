import 'package:flutter/material.dart';
import 'package:pork_pockets_app/util/appbar.dart';
import 'package:pork_pockets_app/util/color_util.dart';
import 'package:pork_pockets_app/util/images_util.dart';
import 'package:pork_pockets_app/util/text_util.dart';

class GuidePage extends StatelessWidget {
  const GuidePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Paleta.bgColor,
      appBar: appBar(),
      body: ListView(children: [
        Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(50),
                    child: FormatedText('Guia do Usuário', 36, FontWeight.bold),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Title(
                            color: Colors.white,
                            child: FormatedText(
                                'Método 50-30-20', 20, FontWeight.bold)),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(20),
                    padding: const EdgeInsets.all(20),
                    child: FormatedText(
                        'Nós utilizamos o método 50-30-20 para te auxiliar a administrar suas finanças. A ideia é dividir a renda líquida mensal em três partes (50%, 30% e 20%), considerando as despesas fixas, despesas variáveis e o dinheiro que você vai poupar.',
                        20,
                        FontWeight.w400),
                  ),
                  Container(
                    margin: const EdgeInsets.all(20),
                    width: 600,
                    decoration: BoxDecoration(
                    color: const Color.fromARGB(200, 2, 94, 115),
                    borderRadius: BorderRadius.circular(15),
                  ),  
                    child: guiaInfo('assets/images/50_porco.png', '50%', 'Os gastos fixos são aqueles essenciais: energia elétrica, água, moradia, supermercado, transporte, plano de saúde, farmácia. Para entender o que realmente é um gasto essencial, reflita sobre o que pode ser dispensável e o que realmente é fundamental para você.')),
                  const SizedBox(height: 20,),
                  Container(
                    margin: const EdgeInsets.all(20),
                    width: 600,
                    decoration: BoxDecoration(
                    color: const Color.fromARGB(200, 2, 94, 115),
                    borderRadius: BorderRadius.circular(15),
                  ),
                    child: guiaInfo('assets/images/30_porco.png', '30%', 'Tudo o que não entrou na primeira lista e que não é considerado essencial para a sobrevivência pode ser classificado como gasto variável ou dispensável. É o café da manhã na padaria aos domingos, os serviços de streaming que você assina, a TV a cabo, os serviços que você faz fora de casa, como unha, cabelo, massagem, compras online muitas vezes desnecessárias que você faz para aproveitar uma suposta promoção.')),
                  const SizedBox(height: 20,),
                  Container(
                    margin: const EdgeInsets.all(20),
                    width: 600,
                    decoration: BoxDecoration(
                    color: const Color.fromARGB(200, 2, 94, 115),
                    borderRadius: BorderRadius.circular(15),
                  ),
                    child: guiaInfo('assets/images/20_porco.png', '20%', 'Essa é a porcentagem ideal que você reserve da sua renda líquida mensal para viver com tranquilidade e conseguir realizar seus projetos. Poupar significa que você tem dinheiro guardado para te apoiar em momentos de urgência sem precisar recorrer a empréstimos ou linhas de crédito caras, como cheque especial e rotativo do cartão de crédito.')),
                ],
              )
            ])
      ]),
    );
  }

  Column guiaInfo(path,String typeInvest, String mesage) {
    return Column(
                  children: [
                    addImg(path),
                    mediumText(typeInvest, fontColor: Paleta.rosa),
                    Container(
                      padding: const EdgeInsets.all(20),
                      child: FormatedText(
                          mesage,
                          20,
                          FontWeight.w400),
                    ),
                  ],
                );
  }
}
