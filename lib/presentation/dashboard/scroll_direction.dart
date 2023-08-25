import 'package:flutter/material.dart';

class ScrollDirections extends StatefulWidget {
  const ScrollDirections({super.key});

  @override
  State<ScrollDirections> createState() => _ScrollDirectionsState();
}

class _ScrollDirectionsState extends State<ScrollDirections> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 150,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  child: Image(image: AssetImage('assets/images/group_11.png')),
                ),SizedBox(width: 15,),
                Container(
                  child: Image(image: AssetImage('assets/images/group_11.png')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
