import 'package:apna_chotu_app/common/app_text.dart';
import 'package:flutter/material.dart';

class HelloText extends StatefulWidget {
  const HelloText({super.key});

  @override
  State<HelloText> createState() => _HelloTextState();
}

class _HelloTextState extends State<HelloText> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          Text16Orange('Hello Text')
        ],),
      ),
    );
  }
}
