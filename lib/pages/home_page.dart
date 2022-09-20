import 'package:flutter/material.dart';
import 'package:geri_health/pages/appointment_page.dart';
import 'package:geri_health/pages/calculator_page.dart';
import 'package:geri_health/pages/vaccines_page.dart';
import 'package:geri_health/widgets/bottom_navigation_bar.dart';
import 'package:geri_health/models/vaccine.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Vaccine> vaccines = [];

  final screens = [
    // ignore: prefer_const_constructors
    const VaccinesPage(),
    const AppointmentPage(),
    const CalculatorPage(),
  ];

  final bottomItems = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.vaccines_outlined),
      label: 'Minhas Vacinas',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.bookmark),
      label: 'Minhas Consultas',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.calculate),
      label: 'Calcular IMC',
    ),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset('assets/icons/icon_top.png'),
        backgroundColor: currentIndex == 1 ? Colors.teal : Colors.lightBlue,
        elevation: 2,
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBarTemplate(
        currentIndex: currentIndex,
        items: bottomItems,
        screens: screens,
        onTap: (index) => setState(() => currentIndex = index),
      ),
    );
  }
}
