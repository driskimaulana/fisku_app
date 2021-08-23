import 'package:fisku_app/screens/pages/calculator_page.dart';
import 'package:fisku_app/screens/pages/materi_page.dart';
import 'package:fisku_app/screens/pages/soal_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List<Widget> _listMenu = [
    MateriPage(),
    SoalPage(),
    CalculatorPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _listMenu[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) => setState(() => _currentIndex = index),
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.book),
            label: 'Materi',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.question),
            label: 'Soal',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.calculator),
            label: 'Calculator',
          ),
        ],
      ),
    );
  }
}
