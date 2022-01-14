import 'package:bugsquash/screens/homepage.dart';
import 'package:bugsquash/widgets/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme(context),
      home: const HomePage(),
    );
  }
}
