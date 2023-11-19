import 'package:flutter/material.dart';

class HomePage extends StatelessWidget 
{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      backgroundColor: Color.fromRGBO(7, 121, 148, 58),

      appBar: AppBar
      (
        backgroundColor: Color.fromRGBO(7, 121, 148, 58),
        elevation: 0,
        title: const Text("Home"),
        centerTitle: true,
      ),

      body: const Center
      (
        child: Text("Comece aqui!"),
      ),
    );
  }
}