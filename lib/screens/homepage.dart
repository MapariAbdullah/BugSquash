import 'package:bugsquash/widgets/bottomnav.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      bottomNavigationBar: const BottomNav(),
    );
  }
}
