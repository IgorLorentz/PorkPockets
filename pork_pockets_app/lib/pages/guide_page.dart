import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';



main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Atualizações necessárias para funcionamento
      // flex_color_scheme
      theme: FlexThemeData.light(scheme: FlexScheme.amber),
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.amber),
      themeMode: ThemeMode.dark,
      //themeMode: ThemeMode.light,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(7, 121, 148, 58),
      body: Column(
        children:[Text('Comece aqui!'),]
      ),
    );
  }
}
