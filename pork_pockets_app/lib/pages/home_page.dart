import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
      body: Column(children: [
        SizedBox(
          height: 30,
        ),
        Container(
          padding: EdgeInsets.only(left: 19),
          child: Row(
            children: [
              FormatedText('Olá User', 40, FontWeight.bold),
            ],
          ),
        ),
        SizedBox( height: 7),
        Container(
          padding: EdgeInsets.only(left: 24, right: 19),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FormatedText('Seu salário:', 20, FontWeight.normal),
              SizedBox(
                width: 40,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EditMetaPage(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Paleta.verde,
                  ),
                  child: const Icon(Icons.edit))
            ],
          ),
        ),
        SizedBox( height: 17),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Paleta.azulEscurao,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      smallText('Necessidades', FontWeight.bold,
                          fontColor: Paleta.rosa),
                      SvgPicture.asset('assets/images/50_porco.svg')
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
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Paleta.azulEscurao,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      smallText('Lazer', FontWeight.bold,
                          fontColor: Paleta.rosa),
                      SvgPicture.asset('assets/images/30_porco.svg')
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
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Paleta.azulEscurao,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      smallText('Poupança', FontWeight.bold,
                          fontColor: Paleta.rosa),
                      SvgPicture.asset('assets/images/20_porco.svg')
                    ],
                  ),
                ),
                mediumText("R\$ 200,00")
              ],
            )
          ],
        ),
        Container(
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Paleta.azulEscuro),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FormatedText("Meta Atual: Moto", 20, FontWeight.normal),
                    IconButton(
                        onPressed: () {
                          print("Favorite");
                        },
                        icon: Icon(Icons.favorite_outline)),
                    IconButton(
                        onPressed: () {
                          print("Edit");
                        },
                        icon: Icon(Icons.edit)),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Container(
                    padding: EdgeInsets.only(left: 8, right: 8),
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
                  icon: Icon(Icons.keyboard_arrow_down)),
            ],
          ),
        ),
        Column(
          children: [
            bigText('Reserva'),
          ],
        ),
      ]),
      drawer: SafeArea(
        child: Drawer(
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                accountName: Text("Seu nome e sobrenome"),
                accountEmail: const Text("seuemail@mail.com"),
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
      ),
    );
  }
}
