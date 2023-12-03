import 'package:flutter/material.dart';
import 'package:pork_pockets_app/models/pessoa.dart';
import 'package:pork_pockets_app/pages/new_meta_page.dart';
import 'package:pork_pockets_app/util/appbar.dart';
import 'package:pork_pockets_app/util/color_util.dart';
import 'package:pork_pockets_app/util/text_util.dart';

class MetasPage extends StatefulWidget {
  const MetasPage({super.key});

  @override
  State<MetasPage> createState() => _MetasPageState();
}

class _MetasPageState extends State<MetasPage> {
  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)!.settings.arguments as Pessoa;

    return Scaffold(
      backgroundColor: Paleta.bgColor,
      appBar: appBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 40,
                  margin: const EdgeInsets.only(left: 20, top: 35, bottom: 20),
                  child: FormatedText("Suas metas:", 40, FontWeight.bold),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 30),
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NovaMeta(
                            user: user,
                            onMetasAdded: () =>
                                setState(() {}), 
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Paleta.azulEscurao),
                    child: FormatedText("Nova meta", 15, FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 9,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: user.metas.length,
                itemBuilder: (context, metas) {
                  return Container(
                    margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Paleta.azulEscuro),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FormatedText("Meta: ${user.metas[metas].nome}",
                                  20, FontWeight.normal),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      setState(() =>
                                          user.metas[metas].isFavorited =
                                              !user.metas[metas].isFavorited);
                                    },
                                    icon: Icon(user.metas[metas].isFavorited
                                        ? Icons.favorite
                                        : Icons.favorite_outline),
                                    color: user.metas[metas].isFavorited
                                        ? Paleta.rosa
                                        : Colors.black,
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, "/edit-meta");
                                      },
                                      icon: const Icon(Icons.edit),
                                      color: Colors.black),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  FormatedText(
                                      "R\$ 0", 14, FontWeight.normal,
                                      fontColor: Colors.black),
                                  FormatedText("R\$ ${user.metas[metas].valor}",
                                      14, FontWeight.normal,
                                      fontColor: Colors.black)
                                ],
                              )),
                        ),
                        ExpandIcon(
                          isExpanded: user.metas[metas].isExpanded,
                          color: Colors.black,
                          expandedColor: Colors.black,
                          onPressed: (bool isExpanded) {
                            setState(() => user.metas[metas].isExpanded =
                                !user.metas[metas].isExpanded);
                          },
                        ),
                        if (user.metas[metas].isExpanded)
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
                            child: FormatedText("Tempo estimado: 2 meses", 14,
                                FontWeight.normal),
                          )
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}