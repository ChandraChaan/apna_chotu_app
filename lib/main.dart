import 'package:flutter/material.dart';

import 'views/intro_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Apna Chotu app',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: IntroductionScreenPage(),
    );
  }
}
