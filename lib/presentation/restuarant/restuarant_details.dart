import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RestaurantDetails extends StatefulWidget {
  const RestaurantDetails({super.key});

  @override
  State<RestaurantDetails> createState() => _RestaurantDetailsState();
}

class _RestaurantDetailsState extends State<RestaurantDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.chevron_left),
            ),
            Text(
              'T-Grill',
              style: TextStyle(fontSize: 22),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.transparent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 250,
            width: double.infinity,
            child: Image.asset('assets/images/rectangle_215.png'),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15))),
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Chip(
                            label: Image.asset('assets/images/biryani.png'),
                          )),
                      SizedBox(width: 10),
                      Chip(
                        label: Image.asset('assets/images/frame_38.png'),
                      ),
                      SizedBox(width: 10),
                      Chip(label: Image.asset('assets/images/frame_38.png')),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, top: 22),
                    child: Container(
                      height: 20,
                      width: 75,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          border: Border.all(color: Colors.green),
                          color: Colors.white),
                      child: Center(
                        child: Text(
                          'Popular',
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, top: 18),
                    child: Text(
                      'T-Grill',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      CircleAvatar(
                        child: Icon(
                          Icons.location_on,
                          color: Colors.deepOrange,
                        ),
                        backgroundColor: Color(0xFFFFE9DF),
                      ),
                      SizedBox(width: 6),
                      Text(
                        '4 km',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 40),
                      CircleAvatar(
                          backgroundColor: Color(0xFFFFE9DF),
                          child:
                              Icon(Icons.star_half, color: Colors.deepOrange)),
                      SizedBox(width: 6),
                      Text(
                        '4.8 Rating',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 45),
                  Text(
                    'We are one of the best restaurant in the city of Hyderabad with year of experience We serve a lot of quality food cook directly directly professional chefs. Hope you like it!.',
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
