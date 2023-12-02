import 'package:flutter/material.dart';
import 'package:pork_pockets_app/pages/new_despesa_page.dart';
import 'util/pages.dart';

Map<String, WidgetBuilder> routes() 
{
  return 
  {
    '/': (context) => const LoginPage(),
    '/register': (context) => const RegisterPage(),
    '/home': (context) => const HomePage(),
    '/metas': (context) => const MetasPage(),
    '/nova-meta': (context) => const NovaMeta(),
    '/edit-meta': (context) => const EditMetaPage(),
    '/guide': (context) => const GuidePage(),
    '/cadastrar-renda': (context) => const CadastraRenda(),
    '/despesas': (context) => const DespesasPage(),
    '/nova-despesa': (context) => const NovaDespesa(),
  };
}