import 'package:flutter/material.dart';
import 'package:pork_pockets_app/pages/guide_page.dart';
import 'package:pork_pockets_app/pages/home_page.dart';
import 'package:pork_pockets_app/pages/metas_page.dart';

class Routes 
{
Map<String, WidgetBuilder> routes() 
{
  return 
  {
    '/': (context) => HomePage(),
    '/guide-page': (context) => GuidePage(),
    '/meta': (context) =>  MetasPage(),
  };
}
}