import 'package:flutter/material.dart';

import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/avatar_page.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes App',
      // home: HomePage(),
      initialRoute: HomePage.id,
      routes: <String,WidgetBuilder>{
        HomePage.id : (BuildContext context) => HomePage(),
        AlertPage.id : (BuildContext context) => AlertPage(),
        AvatarPage.id : (BuildContext context) => AvatarPage(),
      },
    );
  }
}