import 'package:flutter/material.dart';
import 'package:pork_pockets_app/util/color_util.dart';
import 'package:pork_pockets_app/util/text_util.dart';

class MetasPage extends StatelessWidget 
{
  const MetasPage({super.key});

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
                margin: EdgeInsets.only(left: 20, top: 35),

                child: SizedBox
                (
                  width: double.infinity,
                  height: 40,
                  
                
                  child: FormatedText("Suas metas:", 40, FontWeight.bold),
                ),
              ),

              Container
              (
                margin: EdgeInsets.only(right: 30, top: 20, bottom: 5),

                child: SizedBox
                (
                  width: double.infinity,
                  height: 22,
                  
                  child: FormatedText("Suas metas:", 40, FontWeight.bold),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}