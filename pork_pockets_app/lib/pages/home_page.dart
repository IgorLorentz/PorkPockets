import 'package:flutter/material.dart';
import 'package:pork_pockets_app/models/pessoa.dart';
import 'package:pork_pockets_app/pages/cadastrar_renda_page.dart';
import 'package:pork_pockets_app/pages/edit_meta_page.dart';
import 'package:pork_pockets_app/util/appbar.dart';
import 'package:pork_pockets_app/util/color_util.dart';
import 'package:pork_pockets_app/util/text_util.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)!.settings.arguments as Pessoa;
    return Scaffold(
      backgroundColor: Paleta.bgColor,
      appBar: appBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: SizedBox(
              width: double.infinity,
              child: Column(children: [
                Row(children: [bigText('Olá ${user.nome}')]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FormatedText('Seu salário: R\$ ${user.salario}', 20,
                        FontWeight.normal),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CadastraRenda(
                                user: user,
                                onEdited: () => setState(() {}),
                                // Para despesas fixas
                              ),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          backgroundColor: Paleta.verde,
                        ),
                        child: const Icon(Icons.edit,
                            color: Color.fromARGB(500, 1, 31, 38)))
                  ],
                ),
                const SizedBox(height: 30),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      card('Necessidades', '50', 'images/50_porco.png',
                          user.salario / 100 * 50),
                      card('Lazer', '30', 'images/30_porco.png',
                          user.salario / 100 * 30),
                      card('Poupança', '20', 'images/20_porco.png',
                          user.salario / 100 * 20),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Paleta.azulEscuro),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FormatedText("Meta: Moto", 20, FontWeight.normal),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.favorite,
                                  color: Paleta.rosa,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 15),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white),
                        child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 3, horizontal: 8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Paleta.verde),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FormatedText(
                                    "R\$ 0", 14, FontWeight.normal,
                                    fontColor: Colors.black),
                                FormatedText(
                                    "R\$ 12.000", 14, FontWeight.normal,
                                    fontColor: Colors.black)
                              ],
                            )),
                      ),
                      ExpandIcon(
                        isExpanded: _isExpanded,
                        color: Colors.black,
                        expandedColor: Colors.black,
                        onPressed: (bool isExpanded) {
                          setState(() => _isExpanded = !isExpanded);
                        },
                      ),
                      if (_isExpanded)
                        Container(
                          //margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                          padding: const EdgeInsets.all(5),
                          width: double.infinity,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15)),
                            color: Paleta.azulEscurao,
                          ),
                          child: FormatedText(
                              "Tempo estimado: 2 meses", 14, FontWeight.normal),
                        )
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Column(
                  children: [
                    bigText('Reserva'),
                    Image.asset('images/jarra.png'),
                  ],
                ),
              ]),
            ),
          ),
        ),
      ),
      drawer: drawer(context, user),
    );
  }

  SafeArea drawer(BuildContext context, Pessoa user) {
    return SafeArea(
        child: Drawer(
      backgroundColor: Paleta.bgColor,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              color: Color.fromARGB(200, 1, 31, 38),
            ),
            accountName: mediumText(user.nome),
            accountEmail: mediumText(user.email),
          ),
          ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/guide");
              },
              leading: const Icon(
                Icons.info_outline,
                color: Colors.white,
              ),
              title: FormatedText("Guia", 24, FontWeight.bold),
              subtitle: FormatedText("Guia do usuário", 16, FontWeight.bold),
              trailing: const Icon(
                Icons.arrow_forward,
                color: Colors.white,
              )),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, "/metas", arguments: user);
            },
            leading: const Icon(
              Icons.bar_chart_sharp,
              color: Colors.white,
            ),
            title: FormatedText("Metas", 24, FontWeight.bold),
            subtitle: FormatedText("Suas metas", 16, FontWeight.bold),
            trailing: const Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, "/despesas", arguments: user);
            },
            leading: const Icon(
              Icons.shopping_cart_checkout_rounded,
              color: Colors.white,
            ),
            title: FormatedText("Despesas", 24, FontWeight.bold),
            subtitle:
                FormatedText("Gerencie suas despesas", 16, FontWeight.bold),
            trailing: const Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ));
  }
}

Column card(String title, String percent, String img, double value) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
        width: 150,
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Paleta.azulEscurao90,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            smallText(title, FontWeight.bold, fontColor: Paleta.rosa),
            Image.asset(img),
            mediumText('$percent%', fontColor: Paleta.rosaClaro)
          ],
        ),
      ),
      mediumText("R\$ $value")
    ],
  );
}
