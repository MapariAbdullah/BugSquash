import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedFontSize: 16,
      selectedIconTheme:
          const IconThemeData(color: Colors.blueAccent, size: 28),
      selectedItemColor: Colors.blueAccent,
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      unselectedIconTheme: const IconThemeData(
        color: Colors.white,
      ),
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.white,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: FaIcon(FontAwesomeIcons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: FaIcon(FontAwesomeIcons.calendar),
          label: 'Calendar',
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: FaIcon(FontAwesomeIcons.chartBar),
          label: 'Stats',
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: FaIcon(FontAwesomeIcons.userAlt),
          label: 'Profile',
        ),
      ],
    );
  }
}
