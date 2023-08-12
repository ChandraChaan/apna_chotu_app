import 'package:flutter/material.dart';

class IntroScreens extends StatefulWidget {
  const IntroScreens({super.key});

  @override
  State<IntroScreens> createState() => _IntroScreensState();
}

class _IntroScreensState extends State<IntroScreens> {
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
                Text("Final Best Delivery\nServices All Around\nYour City",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontSize: 40, color: Colors.white)),
                const SizedBox(
                  height: 20,
                ),
                Text("Affordable delivery options available\nfor you",
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
                  child: Image.asset("assets/images/food.png"),
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
