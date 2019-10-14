import 'package:flutter/material.dart';

import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/avatar_page.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/pages/animated_container.dart';
import 'package:componentes/src/pages/card_page.dart';
import 'package:componentes/src/pages/input_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    AlertPage.id: (BuildContext context) => AlertPage(),
    AvatarPage.id: (BuildContext context) => AvatarPage(),
    CardPage.id: (BuildContext context) => CardPage(),
    AnimatedContainerPage.id: (BuildContext context) => AnimatedContainerPage(),
    InputPage.id: (BuildContext context) => InputPage(),
  };
}
