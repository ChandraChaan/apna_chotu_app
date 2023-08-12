import 'package:apna_chotu_app/views/cooking.dart';
import 'package:apna_chotu_app/views/delivery.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'common/linear_background.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  final _controller = PageController();

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
                  "Final Best Delivery\nServices All Around\nYour City",
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 40),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Affordable delivery options available\nfor you",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 370,
                  width: 350,
                  child: Image.asset("assets/images/food.png"),
                ),
                const SizedBox(
                  height: 40,
                ),
                Center(
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CookScreen()));
                      },
                      style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 130, vertical: 16),
                          backgroundColor: Colors.deepOrange,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40))),
                      child: const Text(
                        "Next",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white),
                      )),
                ),
                SizedBox(
                  height: 0,
                  child: PageView(
                    controller: _controller,
                    children: [CookScreen(), DeliveryScreen()],
                  ),
                ),
                Center(
                  child: SmoothPageIndicator(
                    controller: _controller,
                    count: 4,
                    effect: JumpingDotEffect(
                        verticalOffset: 10,
                        activeDotColor: Colors.deepOrange,
                        dotColor: Colors.deepOrangeAccent.withOpacity(.2),
                        dotHeight: 20,
                        dotWidth: 20),
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
