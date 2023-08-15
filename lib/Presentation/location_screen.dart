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
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.chevron_left, color: Colors.black, size: 45),
          onPressed: () {
            // Navigator.of(context).pop();
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
          Container(
            // height: MediaQuery.of(context).size.height/1,

            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Isolation_Mode.png",),
                fit: BoxFit.cover,

              ),

            ),

            child: Padding(
              padding: const EdgeInsets.only(top: 440),
              child: Column(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (cntext) => const CurrentLocation()));
                      },
                      child: Image.asset("assets/images/use_location.png")),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
