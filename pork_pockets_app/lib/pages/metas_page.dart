import 'package:flutter/material.dart';
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
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Paleta.azulEscuro),
                margin: EdgeInsets.all(20),

                child: Column
                (
                  children: 
                  [
                    SizedBox(height: 15),

                    Row
                    (
                      children: 
                      [
                        Container
                        (
                          margin: EdgeInsets.only(left: 20),
                          child: FormatedText("Meta: Moto", 20, FontWeight.normal)
                        ),
                
                        Container
                        (
                          margin: EdgeInsets.only(left: 150),
                          child: Icon(Icons.favorite_border)
                        ),

                        Container
                        (
                          margin: EdgeInsets.only(left: 10),
                          child: Icon(Icons.edit)
                        )
                      ],
                    ),

                    Row
                    (
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: 
                      [
                        Container
                        (
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white),

                          child: Container
                          (
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Paleta.verde),
                            child: Text("Emannuel"),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}