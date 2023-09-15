import 'package:apna_chotu_app/Config/app_pages.dart';
import 'package:flutter/material.dart';
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
                        InkWell(
                          child: Icon(Icons.notifications),
                          onTap: () {},
                        ),
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
                      enlargeFactor: 0.7,
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
                          color: Color(0xFF8F8F8F).withOpacity(0.3),
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
                Stack(
                  children: [
                    Container(
                      height: 140,
                      decoration: BoxDecoration(
                        color: Colors.grey[600],
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        image: DecorationImage(
                          image: AssetImage("assets/images/group_7.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      left: 20,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 230,
                          top: 28,
                        ),
                        child: Column(
                          children: [
                            CommonText(
                              'Best selling\non Groceries',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            InkWell(
                              child: Container(
                                height: 23,
                                width: 82,
                                decoration: BoxDecoration(
                                    color: Colors.deepOrange,
                                    borderRadius: BorderRadius.circular(3)),
                                child: Center(
                                  child: CommonText(
                                    'Upto 30% OFF',
                                    style: TextStyle(
                                        fontSize: 9,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
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
                              'Flat 25% OFF\nfor 1st 3 RIDES',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 3),
                            Row(
                              children: [
                                InkWell(
                                  child: Container(
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
                                  onTap: () {},
                                ),
                                SizedBox(width: 3),
                                CommonText(
                                  '#FL25ACP',
                                  style: TextStyle(
                                      fontSize: 9,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
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
                                        'Call for\nPETS\nCONTROL',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      SizedBox(height: 3),
                                      InkWell(
                                        child: Container(
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
                                        onTap: () {},
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
                                      'Flat 15%\nOFF for\n1st Booking',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    SizedBox(height: 3),
                                    InkWell(
                                      child: Container(
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
                                      onTap: () {},
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
                        padding: const EdgeInsets.only(top: 28, left: 206),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonText(
                              'Flat 25% OFF\nfor 6 Months',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 3),
                            InkWell(
                              child: Container(
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
                              onTap: () {},
                            ),
                            SizedBox(height: 3),
                            CommonText(
                              '#FL25GYM',
                              style:
                                  TextStyle(fontSize: 9, color: Colors.white),
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
