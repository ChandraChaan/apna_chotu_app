import 'package:apna_chotu_app/views/common/linear_background.dart';
import 'package:apna_chotu_app/views/delivery.dart';
import 'package:flutter/material.dart';

class CookScreen extends StatefulWidget {
  const CookScreen({super.key});

  @override
  State<CookScreen> createState() => _CookScreenState();
}

class _CookScreenState extends State<CookScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LinearBackground(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Delivering\nlip-smacking food\nis our passion.",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontSize: 40, color: Colors.white)),
                const SizedBox(
                  height: 16,
                ),
                Text("Time is precious, and we know that\n  ",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontSize: 16, color: Colors.white)),
                SizedBox(
                  height: 370,
                  width: 350,
                  child: Image.asset("assets/images/Cooking.png"),
                ),
                const SizedBox(
                  height: 40,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DeliveryScreen()));
                    },
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 130, vertical: 16),
                        backgroundColor: Colors.deepOrange,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40))),
                    child: const Text(
                      "Next",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
