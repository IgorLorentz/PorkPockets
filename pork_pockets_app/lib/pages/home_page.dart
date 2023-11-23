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
        Row(
          children: [
            FormatedText('Olá User', 40, FontWeight.bold),
          ],
        ),
        SizedBox(
          height: 7,
        ),
        Row(
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
        SizedBox(
          height: 17,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Paleta.azulEscurao,
              child: Column(
                children: [
                  smallText('Necessidades', FontWeight.bold),
                  SvgPicture.asset('assets/images/50_porco.svg')
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              color: Paleta.azulEscurao,
              child: Column(
                children: [
                  smallText('Lazer', FontWeight.bold),
                  SvgPicture.asset('assets/images/50_porco.svg')
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              color: Paleta.azulEscurao,
              child: Column(
                children: [
                  smallText('Poupança', FontWeight.bold),
                  SvgPicture.asset('assets/images/50_porco.svg')
                ],
              ),
            )
          ],
        ),
        
        bigText('Reserva'),
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
                    Navigator.pushNamed(context, "/dados");
                  },
                  leading: const Icon(Icons.cloud),
                  title: const Text("Guide"),
                  subtitle: const Text("Guia do Usuário"),
                  trailing: const Icon(Icons.arrow_forward)),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, "/meta");
                },
                leading: const Icon(Icons.star),
                title: const Text("Meta"),
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
