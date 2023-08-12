import 'package:apna_chotu_app/views/common/linear_background.dart';
import 'package:flutter/material.dart';

class rows extends StatefulWidget {
  const rows({super.key});

  @override
  State<rows> createState() => _rowsState();
}

class _rowsState extends State<rows> {
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
                Text(
                  "your Favourite\nFood delivery\nPartner.",
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 40),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "The best service to fulfill you\nexpectations.",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),SizedBox(height: 150,),
                Row(children: [
                  Image.asset("assets/images/Taco.png"),

                ]),
                Row(
                  children: [
                    Image.asset("assets/images/Burger.png"),
                  ],
                ),
                Row(
                  children: [
                    Image.asset("assets/images/French Fries.png"),
                  ],
                ),
                Container(
                  height: 370,
                  width: 350,
                  child: Image.asset("assets/images/Delivery Vehicle.png"),
                ),
                const SizedBox(
                  height: 40,
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 130, vertical: 16),
                    backgroundColor: Colors.deepOrange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  child: const Row(
                    // Add a Row to contain the CircleAvatar and Text
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black54,
                        child: Icon(Icons.chevron_right),
                      ),
                      // Adding some spacing between the CircleAvatar and Text
                      Text(
                        "Get Started",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
