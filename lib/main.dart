import 'package:flutter/material.dart';
import 'package:components/src/routes/set_generate_route.dart';

import 'package:components/src/routes/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [const Locale('en', 'US'), const Locale('es', 'ES')],
        initialRoute: '/',
        routes: getAppRoutes(),
        onGenerateRoute: (RouteSettings routeSettings) =>
            setGenerateRoute(routeSettings));
  }
}
