import 'package:apna_chotu_app/utils/rounded_button.dart';
import 'package:flutter/material.dart';

class LogoutScreen extends StatelessWidget {
  const LogoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 375,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white),
              child: Column(
                children: [
                  SizedBox(height: 17),
                  Image(image: AssetImage('assets/images/group_3286.png')),
                  SizedBox(height: 17),
                  Text(
                    'Comeback Soon!',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange),
                  ),
                  Center(
                    child: Text(
                      'Are you sure you want to Logout?',
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  SizedBox(height: 17),
                  Center(
                    child: Container(
                      height: 40,
                      width: 210,
                      child:
                          RoundedButton(onPressed: () {}, name: 'Yes, Logout'),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Cancel',
                      style: TextStyle(color: Colors.deepOrange, fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
