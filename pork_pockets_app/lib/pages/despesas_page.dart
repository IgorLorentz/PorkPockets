import 'package:flutter/material.dart';
import 'package:pork_pockets_app/models/pessoa.dart';
import 'package:pork_pockets_app/pages/new_despesa_page.dart';
import 'package:pork_pockets_app/util/appbar.dart';
import 'package:pork_pockets_app/util/color_util.dart';
import 'package:pork_pockets_app/util/images_util.dart';
import 'package:pork_pockets_app/util/text_util.dart';

class DespesasPage extends StatefulWidget {
  const DespesasPage({super.key});

  @override
  State<DespesasPage> createState() => _DespesasPageState();
}

class _DespesasPageState extends State<DespesasPage> {
  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)!.settings.arguments as Pessoa;

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
                    color: const Color.fromARGB(200, 2, 94, 115),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListView.separated(
                    itemBuilder: (BuildContext context, int despesas) {
                      return Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Paleta.azulEscurao90,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: mediumText(
                              'Conta: ${user.despesasFixas[despesas].nome}\nValor: R\$ ${user.despesasFixas[despesas].valor}'));
                    },
                    separatorBuilder: (_, __) => const Divider(),
                    padding: const EdgeInsets.all(10),
                    itemCount: user.despesasFixas.length,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 420,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(200, 2, 94, 115),
                  borderRadius: BorderRadius.circular(15)),
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Paleta.azulEscurao,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NovaDespesa(
                            user: user,
                            onDespesaAdded: () => setState(() {}),
                            isDespesaFixa: true, // Para despesas fixas
                          ),
                        ),
                      );
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
                    height: 279,
                    width: 420,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(200, 2, 94, 115),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ListView.separated(
                      itemBuilder: (BuildContext context, int despesas) {
                        return Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Paleta.azulEscurao90),
                            child: FormatedText(
                                '${user.despesasVars[despesas].nome}\nR\$ ${user.despesasVars[despesas].valor}',
                                20,
                                FontWeight.bold));
                      },
                      separatorBuilder: (_, __) => const Divider(),
                      padding: const EdgeInsets.all(10),
                      itemCount: user.despesasVars.length,
                    ))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 420,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(200, 2, 94, 115),
                  borderRadius: BorderRadius.circular(15)),
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Paleta.azulEscurao,
                    borderRadius: BorderRadius.circular(15)),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NovaDespesa(
                            user: user,
                            onDespesaAdded: () => setState(() {}),
                            isDespesaFixa: false, // Para despesas variáveis
                          ),
                        ),
                      );
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
      ]),
    );
  }
}