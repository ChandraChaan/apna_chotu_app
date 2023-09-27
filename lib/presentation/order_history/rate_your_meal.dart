import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/app_text.dart';

class RateYourMeal extends StatelessWidget {
  const RateYourMeal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                minLeadingWidth: 0,
                minVerticalPadding: 0,
                horizontalTitleGap: -10,
                contentPadding: const EdgeInsets.all(0),
                leading: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(Icons.chevron_left, size: 25,color: Colors.black,),
                ),
                title: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text16BlackBld(
                      'Rate Your Meal'
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Text10Black('#163728282738, Delivered, 1 Item, ₹ 1235'),
                  ),
                ],
              ),
              Divider(thickness: 2),
              SizedBox(height: 17),
              Column(
                children: [
                  Center(
                    child: Text14OrangeBld(
                      'Grand Hotel'
                    ),
                  ),
                  SizedBox(height: 10),
                  Text10Black(
                    'Opposite Big Bazaar, Abids Road, Hyderabad',
                  ),
                  SizedBox(height: 21),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 85),
                    child: Row(
                      children: [
                        Icon(Icons.star_border),
                        SizedBox(width: 24),
                        Icon(Icons.star_border),
                        SizedBox(width: 24),
                        Icon(Icons.star_border),
                        SizedBox(width: 24),
                        Icon(Icons.star_border),
                        SizedBox(width: 24),
                        Icon(Icons.star_border),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
