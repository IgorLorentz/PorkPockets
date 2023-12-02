// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:pork_pockets_app/models/meta.dart';
import 'package:pork_pockets_app/util/appbar.dart';
import 'package:pork_pockets_app/util/color_util.dart';
import 'package:pork_pockets_app/util/text_util.dart';

class MetasPage extends StatefulWidget {
  const MetasPage({super.key});

  @override
  State<MetasPage> createState() => _MetasPageState();
}

class _MetasPageState extends State<MetasPage> {
  List<Meta> metas = 
  [
    Meta(nome: "Carro", valor: 100.000),
    Meta(nome: "Moto", valor: 18.000),
    Meta(nome: "Celular", valor: 2.500),
    Meta(nome: "Notebook", valor: 3.750),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Paleta.bgColor,
      appBar: appBar(),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 40,
                margin: const EdgeInsets.only(left: 20, top: 35, bottom: 20),
                child: FormatedText("Suas metas:", 40, FontWeight.bold),
              ),
              
              Container(
                margin: const EdgeInsets.only(right: 30, bottom: 5),
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/nova-meta");
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Paleta.azulEscurao),
                  child: FormatedText("Nova meta", 15, FontWeight.bold),
                ),
              ),
              
              meta(context, metas[0]),
              meta(context, metas[1]),
              meta(context, metas[2]),
              meta(context, metas[3]),
            ],
          )
        ],
      ),
    );
  }

  Container meta(BuildContext context, Meta meta) {
    return Container(
              margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Paleta.azulEscuro),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      
                      children: [
                        FormatedText("Meta: ${meta.nome}", 20, FontWeight.normal),
                        
                        Row
                        (
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              
                          children: 
                          [
                            IconButton
                            (
                              onPressed: () 
                              {
                                print(meta.isFavorited);
                                setState(() => meta.isFavorited = !meta.isFavorited);
                                
                              },
                              icon: Icon(meta.isFavorited ? Icons.favorite : Icons.favorite_outline),
                              color: meta.isFavorited ? Paleta.rosa : Colors.black,
                            ),
                                                  
                            IconButton
                            (
                              onPressed: () {Navigator.pushNamed(context, "/edit-meta");},
                              icon: const Icon(Icons.edit),
                              color: Colors.black
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: Container(
                        padding:
                            const EdgeInsets.symmetric(vertical: 3, horizontal: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Paleta.verde),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FormatedText("R\$ 12.000", 14, FontWeight.normal,
                                fontColor: Colors.black),
                            FormatedText("R\$ ${meta.valor}", 14, FontWeight.normal,
                                fontColor: Colors.black)
                          ],
                        )),
                  ),
                  
                  ExpandIcon
                  (
                    isExpanded: meta.isExpanded,
                    color: Colors.black,
                    expandedColor: Colors.black,
                    onPressed: (bool isExpanded)
                    {
                      setState(() => meta.isExpanded = !meta.isExpanded);
                    },
                  ),

                  if(meta.isExpanded)
                      Container
                      (
                        //margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                        padding: const EdgeInsets.all(5),
                        width: double.infinity,
                        alignment: Alignment.center,
                        decoration: BoxDecoration
                        (
                          borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
                          color: Paleta.azulEscurao, 
                        ),
                        child: FormatedText("Tempo estimado: 2 meses", 14, FontWeight.normal),
                      )
                ],
              ),
            );
  }
}
