import 'package:flutter/material.dart';

import '../../utils/rounded_button.dart';

class NonVegCloseSoon extends StatefulWidget {
  const NonVegCloseSoon({super.key});

  @override
  State<NonVegCloseSoon> createState() => _NonVegCloseSoonState();
}

class _NonVegCloseSoonState extends State<NonVegCloseSoon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 170),
              child: Container(
                height: 160,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/close_1.png'),
                )),
              ),
            ),
            Text(
              '00:10:23',
              style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(height: 4),
            Text(
              "Restaurant Closing soon in 10mins",
              style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 3),
            Text(
              'Hurry up order before close',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 10),
            Container(
              width: 140,
              height: 40,
              child: RoundedButton(
                // width: MediaQuery.of(context).size.width/1.2,
                onPressed: () {},
                name: 'Order Now'
              ),
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Cancel',
                  style: TextStyle(
                      color: Colors.deepOrange, fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
