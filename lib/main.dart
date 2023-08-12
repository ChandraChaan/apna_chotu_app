import 'package:apna_chotu_app/views/HomeScreen.dart';
import 'package:flutter/material.dart';


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
      home: const HomePages(),
    );
  }
}
