// ignore_for_file: avoid_print, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pork_pockets_app/pages/cadastrar_renda_page.dart';
import 'package:pork_pockets_app/pages/edit_meta_page.dart';
import 'package:pork_pockets_app/util/appbar.dart';
import 'package:pork_pockets_app/util/color_util.dart';
import 'package:pork_pockets_app/util/images_util.dart';
import 'package:pork_pockets_app/util/text_util.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Paleta.bgColor,
      appBar: appBar(),
      body: Column(children: [
        const SizedBox(
          height: 30,
        ),
        Container(
          padding: const EdgeInsets.only(left: 19),
          child: Row(
            children: [
              FormatedText('Olá User', 40, FontWeight.bold),
            ],
          ),
        ),
        const SizedBox(height: 7),
        Container(
          padding: const EdgeInsets.only(left: 24, right: 19),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FormatedText('Seu salário: R\$ 1000,00', 20, FontWeight.normal),
              const SizedBox(
                width: 40,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/cadastrar-renda");
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    backgroundColor: Paleta.verde,
                  ),
                  child: const Icon(Icons.edit,
                      color: Color.fromARGB(500, 1, 31, 38)))
            ],
          ),
        ),
        const SizedBox(height: 17),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Paleta.azulEscurao,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      smallText('Necessidades', FontWeight.bold,
                          fontColor: Paleta.rosa),
                      addImg('assets/images/50_porco.png')
                    ],
                  ),
                ),
                mediumText("R\$ 1000,00")
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Paleta.azulEscurao,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      smallText('Lazer', FontWeight.bold,
                          fontColor: Paleta.rosa),
                      addImg('assets/images/30_porco.png')
                    ],
                  ),
                ),
                mediumText("R\$ 500,00")
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Paleta.azulEscurao,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      smallText('Poupança', FontWeight.bold,
                          fontColor: Paleta.rosa),
                      addImg('assets/images/20_porco.png')
                    ],
                  ),
                ),
                mediumText("R\$ 200,00")
              ],
            )
          ],
        ),
        Container(
          margin: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Paleta.azulEscuro),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FormatedText("Meta Atual: Moto", 20, FontWeight.normal),
                    IconButton(
                        onPressed: () {
                          print("Favorite");
                        },
                        icon: const Icon(Icons.favorite_outline,
                        color: Colors.black,
                        )),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const EditMetaPage(),
                              ));
                        },
                        icon: const Icon(Icons.edit,
                        color: Colors.black,
                        )),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Container(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Paleta.verde),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Olá zé"), Text('R\$ 1000,00')],
                    )),
              ),
              IconButton(
                  onPressed: () {
                    print("Open");
                  },
                  icon: const Icon(Icons.keyboard_arrow_down)),
            ],
          ),
        ),
      ]),
      drawer: drawer(context),
    );
  }

  SafeArea drawer(BuildContext context) {
    return SafeArea(
        child: Drawer(
      backgroundColor: Paleta.bgColor,
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("Seu nome e sobrenome"),
            accountEmail: Text("seuemail@mail.com"),
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
              Navigator.pushNamed(context, "/metas");
            },
            leading: const Icon(Icons.bar_chart_sharp, color: Colors.white,),
            title: FormatedText("Metas", 24, FontWeight.bold),
            subtitle: FormatedText("Suas metas", 16, FontWeight.bold),
            trailing: const Icon(Icons.arrow_forward, color: Colors.white,),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, "/despesas");
            },
            leading: const Icon(Icons.shopping_cart_checkout_rounded, color: Colors.white,),
            title: FormatedText("Despesas", 24, FontWeight.bold),
            subtitle: FormatedText("Gerencie suas despesas", 16, FontWeight.bold),
            trailing: const Icon(Icons.arrow_forward, color: Colors.white,),
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
