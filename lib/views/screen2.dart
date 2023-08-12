import 'package:flutter/material.dart';

class ScreenSecond extends StatefulWidget {
  const ScreenSecond({super.key});

  @override
  State<ScreenSecond> createState() => _ScreenSecondState();
}

class _ScreenSecondState extends State<ScreenSecond> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.purpleAccent,
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Text("Delivering\nlip-smacking food\nis our passion.",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontSize: 40, color: Colors.white)),
                const SizedBox(
                  height: 20,
                ),
                Text("Time is precious, and we know that",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontSize: 20, color: Colors.white)),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 365,
                  width: 340,
                  child: Image.asset("assets/images/cooking.png"),
                ),
                const SizedBox(
                  height: 40,
                ),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        padding:
                        const EdgeInsets.symmetric(horizontal: 130, vertical: 16),
                        backgroundColor: Colors.deepOrange,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40))),
                    child: const Text(
                      "Next",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white),
                    ))
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
