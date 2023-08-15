import 'package:flutter/material.dart';

class CurrentLocation extends StatefulWidget {
  const CurrentLocation({super.key});

  @override
  State<CurrentLocation> createState() => _CurrentLocationState();
}

class _CurrentLocationState extends State<CurrentLocation> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: ListTile(
          minLeadingWidth: 0,
          leading: Icon(
            Icons.location_on,
          ),
          title: Text('Petals Accessories'),
          subtitle: Text('Karwan Road, Rahimpura, Dattatreya Nagar, Hyderabad'),
        ),
      ),
    );
  }
}
