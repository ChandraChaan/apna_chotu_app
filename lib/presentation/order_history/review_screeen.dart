import 'package:apna_chotu_app/presentation/order_history/order_details_screen.dart';
import 'package:apna_chotu_app/presentation/order_history/order_history.dart';
import 'package:apna_chotu_app/presentation/profile_screen/profile_screen.dart';
import 'package:apna_chotu_app/utils/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/app_text.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            ListTile(
              minLeadingWidth: 0,
              minVerticalPadding: 0,
              horizontalTitleGap: -10,
              contentPadding: const EdgeInsets.all(0),
              leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 25,
                  color: Colors.black,
                ),
              ),
              title: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text16BlackBld('Meal from Grand Hotel'),
                ],
              ),
              subtitle: Text10Black('#163728282738, Delivered, 1 Item, ₹ 1235'),
            ),
            Divider(thickness: 2),
            SizedBox(height: 5),
            Center(
              child: Text14OrangeBld('Average'),
            ),
            SizedBox(height: 17),
            Row(
              children: [
                SizedBox(height: 21),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 85),
                  child: Row(
                    children: [
                      Icon(Icons.star, color: Colors.deepOrange),
                      SizedBox(width: 24),
                      Icon(Icons.star, color: Colors.deepOrange),
                      SizedBox(width: 24),
                      Icon(Icons.star, color: Colors.deepOrange),
                      SizedBox(width: 24),
                      Icon(Icons.star_border),
                      SizedBox(width: 24),
                      Icon(Icons.star_border),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Center(
              child: Text14BlackBld('Please Add a Review'),
            ),
            SizedBox(height: 17),
            Container(
              //padding: const EdgeInsets.all(10),
              child: TextField(
                maxLines: 3,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    hintText: 'Tell us your suggestions'),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Container(
                height: 40,
                width: 213,
                child: RoundedButton(
                  name: '',
                  child: Text13WhitekBld('Submit Your Feedback'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OrderHistoryScreen()));
                  },
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
