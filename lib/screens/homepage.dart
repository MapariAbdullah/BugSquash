import 'package:bugsquash/screens/calendar.dart';
import 'package:bugsquash/screens/hometransact.dart';
import 'package:bugsquash/screens/statscreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _pageOptions = [
    const HomeTransact(),
    const CalendarScreen(),
    const StatScreen(),
  ];

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Home',
          style: TextStyle(fontFamily: 'Roboto'),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black87,
        selectedFontSize: 18,
        selectedIconTheme:
            const IconThemeData(color: Colors.blueAccent, size: 28),
        selectedItemColor: Colors.blueAccent,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        unselectedIconTheme: const IconThemeData(
          color: Colors.white,
        ),
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.calendar),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.chartBar),
            label: 'Stats',
          ),
        ],
      ),
      body: _pageOptions[_selectedIndex],
    );
  }
}
