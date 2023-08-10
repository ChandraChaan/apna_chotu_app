import 'package:flutter/material.dart';

class DeliveryScreen extends StatefulWidget {
  const DeliveryScreen({super.key});

  @override
  State<DeliveryScreen> createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends State<DeliveryScreen> {
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
                Text("your Favourite\nFood delivery\nPartner.",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontSize: 40, color: Colors.white)),
                SizedBox(
                  height: 20,
                ),
                Text("The best service to fulfill you\nexpectations.",
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
                  child: Image.asset("Images/Delivery Vehicle.png"),
                ),
                SizedBox(
                  height: 40,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 60, vertical: 16),
                            backgroundColor: Colors.deepOrange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                          child: Row(
                            // Add a Row to contain the CircleAvatar and Text
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.black54,
                                child: Icon(Icons.chevron_right),
                              ),SizedBox(width: 40,),
                              // Adding some spacing between the CircleAvatar and Text
                              Text(
                                "Get Started",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
