import 'package:flutter/material.dart';
import 'package:pork_pockets_app/pages/home_page.dart';
import 'package:pork_pockets_app/routes.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget
{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp
    (
      debugShowCheckedModeBanner: false,
      theme: ThemeData
      (
        primaryColor: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}