import 'package:flutter/material.dart';
import 'package:pork_pockets_app/pages/home_page.dart';

class GuidePage extends StatelessWidget {
  const GuidePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(7, 121, 148, 58),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(7, 121, 148, 58),
        title: const Text('Guide'),
        centerTitle: true,
      ),
      body: ListView(children: [
        Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  addImg(context, 'assets/images/dogImg.png'),
                  Text('Os gastos fixos são aqueles essenciais: energia elétrica, água, moradia, supermercado, transporte, plano de saúde, farmácia. Para entender o que realmente é um gasto essencial, reflita sobre o que pode ser dispensável e o que realmente é fundamental para você.',
                  style: TextStyle(
                    fontFamily: "JosefinSans",
                  fontSize: 20,
                  fontWeight: FontWeight.w100,
                  fontStyle: FontStyle.normal,
                  color: Color.fromARGB(240, 243, 246, 96),
                  ),),
                  addImg(context, 'assets/images/dogImg.png'),
                  Text('Os gastos fixos são aqueles essenciais: energia elétrica, água, moradia, supermercado, transporte, plano de saúde, farmácia. Para entender o que realmente é um gasto essencial, reflita sobre o que pode ser dispensável e o que realmente é fundamental para você.'),
                  addImg(context, 'assets/images/dogImg.png'),
                  Text('Os gastos fixos são aqueles essenciais: energia elétrica, água, moradia, supermercado, transporte, plano de saúde, farmácia. Para entender o que realmente é um gasto essencial, reflita sobre o que pode ser dispensável e o que realmente é fundamental para você.'),
                ],
              )
            ])
      ]), 
    );
  }

  Container addImg(BuildContext context, String path) {
    return Container(
        margin: EdgeInsets.all(10),
        height: 120,
        child: Image.asset(
          path,
          fit: BoxFit.cover,
        ),
      );
  }
}
