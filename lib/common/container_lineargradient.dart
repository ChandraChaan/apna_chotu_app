import 'package:flutter/material.dart';

class ContainerLinearGradient extends StatelessWidget {
  const ContainerLinearGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 93,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // background color
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0XFFFA6423), Color(0xFF9A2D08)],
        ),
      ),
    );
  }
}
