import 'package:flutter/material.dart';
import 'package:components/src/pages/page_not_found_page.dart';

Route<dynamic> setGenerateRoute(RouteSettings routeSettings) {
  print('Ruta Llamada: ${routeSettings.name}');
  return MaterialPageRoute(
      builder: (BuildContext context) => PageNotFoundPage());
}
