import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pork_pockets_app/util/color_util.dart';
import 'package:pork_pockets_app/util/text_util.dart';

class MetasPage extends StatefulWidget 
{
  const MetasPage({super.key});

  @override
  State<MetasPage> createState() => _MetasPageState();
}

class _MetasPageState extends State<MetasPage> 
{
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      backgroundColor: Paleta.bgColor,

      appBar: AppBar
      (
        title: const Text("Layout Modelo"),
        centerTitle: true,
      ),

      body: ListView
      (
        children: 
        [
          Column
          (
            mainAxisAlignment: MainAxisAlignment.center,

            children: 
            [
              Container
              (
                width: double.infinity,
                height: 40,
                margin: EdgeInsets.only(left: 20, top: 35, bottom: 20),
  
                child: FormatedText("Suas metas:", 40, FontWeight.bold),
              ),

              Container
              (
                margin: EdgeInsets.only(right: 30, bottom: 5),
                alignment: Alignment.centerRight,

                child: ElevatedButton
                (
                  onPressed: (){print("Cliquei");},
                  
                  style: ElevatedButton.styleFrom
                  (
                    backgroundColor: Paleta.azulEscurao
                  ),

                  child: FormatedText("Nova meta", 15, FontWeight.bold),
                ),
              ),

              Container
              (
                margin: EdgeInsets.all(15),
                
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Paleta.azulEscuro),

                child: Column
                (
                  children: 
                  [
                    Row
                    (
                      children: 
                      [
                        FormatedText("Meta: Moto", 20, FontWeight.normal),
                        IconButton(onPressed: (){favorite();}, icon: Icon(Icons.favorite_outline), color: Colors.black),
                        IconButton(onPressed: (){print("Edit");}, icon: Icon(Icons.edit), color: Colors.black),
                      ],
                    ),

                    Container
                    (
                      margin: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                      width: double.infinity,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white),
                      child: Container
                      (
                        padding: EdgeInsets.symmetric(vertical: 3, horizontal: 8),

                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Paleta.verde),
                        child: Row
                        (
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: 
                          [
                            FormatedText("R\$ 0", 14, FontWeight.normal, fontColor: Colors.black),
                            FormatedText("R\$ 12.000", 14, FontWeight.normal, fontColor: Colors.black)
                          ],
                        )
                      ),
                    ),

                    IconButton(onPressed: (){print("Open");}, icon: Icon(Icons.keyboard_arrow_down), color: Colors.black),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  void favorite()
  {
    print("Favorite");
  }
}