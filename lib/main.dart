import 'package:flutter/material.dart';
import 'package:gibdd_templates_web/screens/main/main_page.dart';
import 'package:gibdd_templates_web/themes/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Помощник ГИБДД',
      theme: mainTheme,
      home: MainPage(),
    );
  }
}
