import 'package:flutter/material.dart';
import 'package:pork_pockets_app/repositories/despesas_repository.dart';
import 'package:pork_pockets_app/util/appbar.dart';
import 'package:pork_pockets_app/util/color_util.dart';
import 'package:pork_pockets_app/util/images_util.dart';
import 'package:pork_pockets_app/util/text_util.dart';

class DespesasPage extends StatefulWidget {
  const DespesasPage({Key? key}) : super(key: key);

  @override
  State<DespesasPage> createState() => _DespesasPageState();
}

class _DespesasPageState extends State<DespesasPage> {
  @override
  Widget build(BuildContext context) {
    final fixas = DespesasRepository.despesaFix;
    final variaveis = DespesasRepository.despesaVar;

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
                addImg('assets/images/50_porco.png', altura: 75, largura: 75),
                mediumText('Despesas Fixas')
              ],
            ),
            Column(
              children: [
                Container(
                  height: 279,
                  width: 420,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(200, 2, 94, 115),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListView.separated(
                    itemBuilder: (BuildContext context, int despesas) {
                      return Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Paleta.azulEscurao90,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: mediumText(
                              'Conta: ${fixas[despesas].nome}\nValor: R\$ ${fixas[despesas].valor}'));
                    },
                    separatorBuilder: (_, __) => Divider(),
                    padding: EdgeInsets.all(10),
                    itemCount: fixas.length,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 420,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color.fromARGB(200, 2, 94, 115),
                  borderRadius: BorderRadius.circular(15)),
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Paleta.azulEscurao,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/nova-despesa");
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      backgroundColor: Paleta.rosa,
                    ),
                    child: const Icon(Icons.add,
                        color: Color.fromARGB(500, 1, 31, 38))),
              ),
            )
          ],
        ),
        Column(
          children: [
            Row(
              children: [
                addImg('assets/images/30_porco.png', largura: 75, altura: 75),
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
                    child: ListView.separated(
                      itemBuilder: (BuildContext context, int despesas) {
                        return Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Paleta.azulEscurao90),
                            child: FormatedText(
                                '${variaveis[despesas].nome}\nR\$ ${variaveis[despesas].valor}',
                                20,
                                FontWeight.bold));
                      },
                      separatorBuilder: (_, __) => Divider(),
                      padding: EdgeInsets.all(10),
                      itemCount: variaveis.length,
                    ))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 420,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color.fromARGB(200, 2, 94, 115),
                  borderRadius: BorderRadius.circular(15)),
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Paleta.azulEscurao,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/nova-despesa");
                    },
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      backgroundColor: Paleta.rosa,
                    ),
                    child: const Icon(Icons.add,
                        color: Color.fromARGB(500, 1, 31, 38))),
              ),
            )
          ],
        ),
      ]),
    );
  }
}
