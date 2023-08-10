import 'package:flutter/material.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
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
                SizedBox(
                  height: 15,
                ),
                Text("Final Best Delivery\nServices All Around\nYour City",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontSize: 40, color: Colors.white)),
                SizedBox(
                  height: 20,
                ),
                Text("Affordable delivery options available\nfor you",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontSize: 20, color: Colors.white)),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 365,
                  width: 340,
                  child: Image.asset("Images/food.png"),
                ),
                SizedBox(
                  height: 40,
                ),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 130, vertical: 16),
                        backgroundColor: Colors.deepOrange,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40))),
                    child: Text(
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
