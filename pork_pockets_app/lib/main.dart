// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:pork_pockets_app/pages/cadastrar_renda_page.dart';
import 'package:pork_pockets_app/pages/guide_page.dart';
import 'package:pork_pockets_app/pages/home_page.dart';
import 'package:pork_pockets_app/pages/register_page.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(7, 121, 148, 58)),
        useMaterial3: true,
      ),
      home: const RegisterPage(),
    );
  }
}
