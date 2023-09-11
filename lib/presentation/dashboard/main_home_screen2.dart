import 'package:apna_chotu_app/Config/app_pages.dart';
import 'package:apna_chotu_app/utils/constant.dart';
import 'package:apna_chotu_app/utils/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../common/app_text.dart';

class FoodScreen extends StatelessWidget {
  List<Map<String, dynamic>> servicesItems = [
    {"image": "assets/images/plate_1.png", "name": "Food"},
    {"image": "assets/images/service.png", "name": "Services"},
    {"image": "assets/images/cart.png", "name": "Groceries"},
    {"image": "assets/images/medicine.png", "name": "Medicine"},
    {"image": "assets/images/vegetables.png", "name": "Vegetables"},
    {"image": "assets/images/taxi.png", "name": "Taxi Services"},
    {"image": "assets/images/meat.png", "name": "Meat"},
    {"image": "assets/images/misc_services.png", "name": "Misc Services"},
    {"image": "assets/images/more.png", "name": "More"},
  ];

  // int counts = 3;
  // final List<String> img = ['image = 1', 'images = 2', 'images = 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                // List tile have more....
                ListTile(
                  minLeadingWidth: 0,
                  minVerticalPadding: 0,
                  horizontalTitleGap: 10,
                  contentPadding: const EdgeInsets.all(0),
                  leading: Icon(
                    Icons.location_on,
                    size: 38,
                    color: Colors.deepOrange,
                  ),
                  title: SizedBox(
                    width: 100,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CommonText(
                          'Madhapur',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                            onPressed: () {
                              Get.toNamed(Routes.currentLocation);
                            },
                            icon: Icon(Icons.expand_more))
                      ],
                    ),
                  ),
                  subtitle: CommonText(
                    'Rahimpura, Dattatreya Nagar, Hyderabad',
                    style: TextStyle(fontSize: 14),
                  ),
                  trailing: SizedBox(
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.notifications),
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/profile_picture.png'),
                          radius: 23,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 30,
                      ),
                      suffixIcon: IconButton(
                        icon: const Icon(
                          Icons.mic,
                          size: 30,
                          color: Colors.deepOrange,
                        ),
                        onPressed: () {
                          // Perform voice search action
                        },
                      ),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16.0),
                    ),
                  ),
                ),
                CarouselSlider(
                    items: [
                      Image.asset(
                        'assets/images/group_11.png',
                        fit: BoxFit.fill,
                      ),
                      Image.asset(
                        'assets/images/group_12.png',
                        fit: BoxFit.fill,
                      ),
                      Image.asset(
                        'assets/images/group_13.png',
                        fit: BoxFit.fill,
                      ),
                    ],
                    options: CarouselOptions(
                      height: 180,
                      // aspectRatio: 16 / 6,
                      viewportFraction: 0.9,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: false,
                      enlargeFactor: 0.8,
                      onPageChanged: (num, str) {},
                      scrollDirection: Axis.horizontal,
                    )),
                SizedBox(height: 20),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: servicesItems.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1.5,
                      crossAxisCount: 3,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0),
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        if (index == 0)
                          Get.toNamed(Routes.restaurantListScreen);
                        else if (index == 1)
                          Get.snackbar('Services are in progress', 'try again',
                              snackPosition: SnackPosition.BOTTOM,
                              colorText: Colors.white,
                              backgroundColor: Colors.red);
                        else
                          Get.snackbar('Check with food only now', 'try again',
                              snackPosition: SnackPosition.BOTTOM,
                              colorText: Colors.white,
                              backgroundColor: Colors.red);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff8f8f8f).withOpacity(0.3),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                                child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF5F5F5).withOpacity(0.8),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: Image.asset(
                                        servicesItems[index]['image']))),
                            Container(
                              child: CommonText(servicesItems[index]['name']),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ), //image first
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 140,
                  decoration: BoxDecoration(
                    color: Colors.grey[600],
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                      image: AssetImage("assets/images/Group_7.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ), //image second
                SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    Container(
                      height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        image: DecorationImage(
                            image:
                                AssetImage('assets/images/rectangle_208.png'),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Positioned(
                      top: 20, // Adjust the top position as needed
                      left: 20, // Adjust the left position as needed
                      child: Padding(
                        padding: const EdgeInsets.only(top: 70),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonText(
                              'Flat 25% OFF',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            CommonText(
                              'for 1st 3 RIDES',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.white),
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 23,
                                  width: 65,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      color: Colors.deepOrange),
                                  child: Center(
                                    child: CommonText(
                                      'RIDE NOW',
                                      style: TextStyle(
                                          fontSize: 9,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CommonText(
                                    '#FL25ACP',
                                    style: TextStyle(
                                        fontSize: 9,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ), //image third
                SizedBox(height: 10),
                SizedBox(
                  height: 150,
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Stack(
                            children: [
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/rectangle_209.png'),
                                        fit: BoxFit.fill)),
                              ),
                              Positioned(
                                top: 20, // Adjust the top position as needed
                                left: 20, // Adjust the left position as needed
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 32),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CommonText(
                                        'Call for',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      CommonText(
                                        'PETS',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            color: Colors.white),
                                      ),
                                      CommonText(
                                        'CONTROL',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            color: Colors.white),
                                      ),
                                      Container(
                                        height: 23,
                                        width: 65,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(3),
                                            color: Colors.deepOrange),
                                        child: Center(
                                          child: CommonText(
                                            'BOOK NOW',
                                            style: TextStyle(
                                                fontSize: 9,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ), //image four
                      Expanded(
                        child: Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/rectangle_210.png'),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            Positioned(
                              top: 20, // Adjust the top position as needed
                              left: 20, // Adjust the left position as needed
                              child: Padding(
                                padding: const EdgeInsets.only(top: 32),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CommonText(
                                      'Flat 15%',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    CommonText(
                                      'OFF for',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.white),
                                    ),
                                    CommonText(
                                      '1st Booking',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.white),
                                    ),
                                    Container(
                                      height: 23,
                                      width: 65,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(3),
                                          color: Colors.deepOrange),
                                      child: Center(
                                        child: CommonText(
                                          'BOOK NOW',
                                          style: TextStyle(
                                              fontSize: 9,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        image: DecorationImage(
                            image:
                                AssetImage('assets/images/rectangle_211.png'),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Positioned(
                      top: 20, // Adjust the top position as needed
                      left: 20, // Adjust the left position as needed
                      child: Padding(
                        padding: const EdgeInsets.only(top: 32),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonText(
                              'Flat 25% OFF',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            CommonText(
                              'for 6 Months',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.white),
                            ),
                            Container(
                              height: 23,
                              width: 65,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: Colors.deepOrange),
                              child: Center(
                                child: CommonText(
                                  'JOIN NOW',
                                  style: TextStyle(
                                      fontSize: 9,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            CommonText(
                              '#FL25GYM',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrange,
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }

  void setState(Null Function() param0) {}
}
