import 'package:flutter/material.dart';
import 'util/pages.dart';

Map<String, WidgetBuilder> routes() 
{
  return 
  {
    '/': (context) => const LoginPage(),
    '/home': (context) => const HomePage(),
    '/register': (context) => const RegisterPage(),
    '/metas': (context) => const MetasPage(),
    '/guide': (context) => const GuidePage(),
  };
}