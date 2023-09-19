import 'package:flutter/material.dart';

void main() {
  runApp(HotelTipsApp());
}

class HotelTipsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hotel Tips',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HotelTipsScreen(),
    );
  }
}

class HotelTipsScreen extends StatelessWidget {
  final List<String> tips = [
    "Tip 1: Pack your essentials in a carry-on bag.",
    "Tip 2: Check hotel reviews before booking.",
    "Tip 3: Use a luggage tag with your contact information.",
    "Tip 4: Explore local cuisine and restaurants.",
    "Tip 5: Don't forget to bring a power adapter.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hotel Tips'),
      ),
      body: ListView.builder(
        itemCount: tips.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tips[index]),
          );
        },
      ),
    );
  }
}
