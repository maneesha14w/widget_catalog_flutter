import 'package:flutter/material.dart';
import 'package:widget_catalog_flutter/constants.dart';

import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0D22),
        accentColor: kPinkColour,
        scaffoldBackgroundColor: Color(0xFF0A0D22),
      ),
      home: MyHomePage(),
    );
  }
}
