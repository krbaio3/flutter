import 'package:components/src/pages/listview_page.dart';
import 'package:components/src/pages/page_not_found_page.dart';
import 'package:flutter/material.dart';

import 'package:components/src/pages/alert_page.dart';
import 'package:components/src/pages/avatar_page.dart';
import 'package:components/src/pages/home_page.dart';
import 'package:components/src/pages/card_page.dart';
import 'package:components/src/pages/animated_container.dart';
import 'package:components/src/pages/input_page.dart';
import 'package:components/src/pages/slider_page.dart';

Map<String, WidgetBuilder> getAppRoutes() => ({
      '/': (BuildContext context) => HomePage(),
      // alert
      AlertPage.pageName: (BuildContext context) => AlertPage(),
      // avatar
      AvatarPage.pageName: (BuildContext context) => AvatarPage(),
      // card
      CardPage.pageName: (BuildContext context) => CardPage(),
      // animatedContainer
      AnimatedContainerPage.pageName: (BuildContext context) =>
          AnimatedContainerPage(),
      // inputs
      InputPage.pageName: (BuildContext context) => InputPage(),
      // list
      ListPage.pageName: (BuildContext context) => ListPage(),
      //slider
      SliderPage.pageName: (BuildContext context) => SliderPage(),
    });
