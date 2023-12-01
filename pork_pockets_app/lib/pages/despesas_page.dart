import 'package:flutter/material.dart';
import 'package:pork_pockets_app/repositories/despesas_repository.dart';
import 'package:pork_pockets_app/util/appbar.dart';
import 'package:pork_pockets_app/util/color_util.dart';
import 'package:pork_pockets_app/util/images_util.dart';
import 'package:pork_pockets_app/util/text_util.dart';

class DespesasPage extends StatelessWidget {
  const DespesasPage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final tabela = DespesasRepository.tabela;
    return Scaffold(
      backgroundColor: Paleta.bgColor,
      appBar: appBar(),
      body: ListView(children: [
        Container(
           padding: const EdgeInsets.only(left: 19),
          child: bigText('Despesas')),
        Column(
          children: [
            Row(
              children: [
                addImg('assets/images/50_porco.png'),
                mediumText('Despesas Fixas')
              ],
            ),
            Column(
              children: [
                Container(
                  height: 179,
                  width: 420,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(200, 2, 94, 115),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                      child: Column(children: [
                    Container(
                      child: Column(
                        children: [
                          
                        ],
                      ),
                    ),
                  ])),
                )
              ],
            )
          ],
        ),
        Column(
          children: [
            Row(
              children: [
                addImg('assets/images/30_porco.png'),
                mediumText('Despesas Variáveis')
              ],
            ),
            Column(
              children: [
                Container(
                  height: 179,
                  width: 420,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(200, 2, 94, 115),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(child: Column(children: [bigText('text')])),
                )
              ],
            )
          ],
        )
      ]),
    );
  }
}
