import 'package:fisku_app/screens/pages/calculator_page.dart';
import 'package:fisku_app/screens/pages/home_page.dart';
import 'package:fisku_app/screens/pages/materi_page.dart';
import 'package:fisku_app/screens/pages/soal_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  int _currentIndex = 0;
  List<Widget> _listMenu = [
    MateriPage(),
    SoalPage(),
    CalculatorPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FisKu App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        fontFamily: 'Poppins',
      ),
      home: HomePage(),
    );
  }
}
