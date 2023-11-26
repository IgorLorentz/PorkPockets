// ignore_for_file: avoid_print, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:pork_pockets_app/pages/edit_meta_page.dart';
import 'package:pork_pockets_app/util/appbar.dart';
import 'package:pork_pockets_app/util/color_util.dart';
import 'package:pork_pockets_app/util/text_util.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Paleta.bgColor,
      appBar: appBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Container(
            width: 700,
            child: Column(children: [
              Row(children: [bigText('Olá User')]),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FormatedText(
                      'Seu salário: R\$ 1500,00', 20, FontWeight.normal),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const EditMetaPage(), // TODO: Implement edit salario pop-up
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Paleta.verde),
                      child: const Icon(Icons.edit))
                ],
              ),
              const SizedBox(height: 30),
              Container(
                width: 600,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    card('Necessidades', '50', 'images/50_porco.png', 1000),
                    card('Lazer', '30', 'images/30_porco.png', 300),
                    card('Poupança', '20', 'images/20_porco.png', 200),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Container(
                width: 700,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Paleta.azulEscuro),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          bigText("Meta Atual: Moto"),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    print("Edit");
                                  },
                                  icon: const Icon(Icons.edit)),
                              IconButton(
                                  onPressed: () {
                                    print("Favorite");
                                  },
                                  icon: const Icon(Icons.favorite_outline)),
                            ],
                          )
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white),
                        child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Paleta.verde),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                mediumText("R\$ 734,85",
                                    fontColor: Colors.black),
                                mediumText('R\$ 1000,00',
                                    fontColor: Colors.black)
                              ],
                            )),
                      ),
                      const SizedBox(height: 10),
                      IconButton(
                          onPressed: () {
                            print("Open");
                          },
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.black,
                          )),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  bigText('Reserva'),
                ],
              ),
            ]),
          ),
        ),
      ),
      drawer: drawer(context),
    );
  }

  SafeArea drawer(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Seu nome e sobrenome"),
              accountEmail: Text("seuemail@mail.com"),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/anuncios");
              },
              leading: const Icon(Icons.announcement),
              title: const Text("Anúncios"),
              subtitle: const Text("mais informações..."),
              trailing: const Icon(Icons.arrow_forward),
            ),
            ListTile(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, "/guide-page");
                },
                leading: const Icon(Icons.info_outline),
                title: const Text("Guide"),
                subtitle: const Text("Guia do Usuário"),
                trailing: const Icon(Icons.arrow_forward)),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/meta");
              },
              leading: const Icon(Icons.bar_chart_sharp),
              title: const Text("Metas"),
              subtitle: const Text("Suas metas"),
              trailing: const Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }

  Column card(String title, String percent, String img, double value) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          decoration: BoxDecoration(
            color: Paleta.azulEscurao90,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              mediumText(title, fontColor: Paleta.rosa),
              Image.asset(img, width: 150),
              hugeText('$percent%', fontColor: Paleta.rosaClaro)
            ],
          ),
        ),
        mediumText("R\$ $value")
      ],
    );
  }
}
