import 'package:flutter/material.dart';
import 'util/pages.dart';

class Routes {
  Map<String, WidgetBuilder> routes() {
    return {
      '/': (context) => HomePage(),
      '/guide-page': (context) => GuidePage(),
      '/meta': (context) => MetasPage(),
    };
  }
}
