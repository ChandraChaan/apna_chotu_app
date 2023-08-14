import 'package:apna_chotu_app/presentation/screens/select_location.dart';
import 'package:flutter/material.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        leading: IconButton(
          icon: Icon(Icons.chevron_left, color: Colors.black, size: 45),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: [
          Text(
            "Hi there,\nNice to meet you!",
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          Center(
            child: Text(
              "Choose your location to start find restaurants\naround you.",
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
          Stack(children: [
            Center(child: Image.asset("assets/images/Isolation_Mode.png")),
            Positioned.fill(
                child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 440),
                      child: Column(
                        children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (cntext) =>
                                            CurrentLocation()));
                              },
                              child: Image.asset(
                                  "assets/images/use_location.png")),
                        ],
                      ),
                    )))
          ])
        ],
      ),
    );
  }
}
