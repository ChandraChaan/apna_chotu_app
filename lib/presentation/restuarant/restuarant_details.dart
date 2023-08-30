import 'package:flutter/material.dart';

class RestaurantDetails extends StatefulWidget {
  const RestaurantDetails({super.key});

  @override
  State<RestaurantDetails> createState() => _RestaurantDetailsState();
}

class _RestaurantDetailsState extends State<RestaurantDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            height: 520,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15))),
            child: Padding(
              padding: const EdgeInsets.only(top: 10,left: 10),
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
                    padding: const EdgeInsets.only(left: 10, top: 22),
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
                  CircleAvatar(
                    child: Icon(
                      Icons.location_on,
                      color: Colors.deepOrange,
                    ),
                    backgroundColor: Color(0xFFFFE9DF),
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
