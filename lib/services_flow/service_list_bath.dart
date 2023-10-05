import 'package:apna_chotu_app/presentation/restuarant/restuarant_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../common/app_text.dart';
import '../../common/buttom_navigation_bar.dart';

class ServiceList extends StatefulWidget {
  const ServiceList({super.key});

  @override
  State<ServiceList> createState() => _ServiceListState();
}

class _ServiceListState extends State<ServiceList> {
  int selected = 1;
  bool service = true; //signup phone nbr one page to other page
  List services_list = [
    {
      "image": "assets/images/bath_1.png",
      "name": "1 Bathroom Cleaning Pack",
      "description":
      "Cleaning Partner arrives ar your doorstep to clean your house",
      "price": "999",
      "rating": "4.0",
      "orders_count": "(122)"
    },
    {
      "image": "assets/images/bath_2.png",
      "name": "1 Bathroom Classic",
      "description": "Get lowest price quotes for your Cleaning service",
      "price": "280",
      "rating": "4.0",
      "orders_count": "(122)"
    },
    {
      "image": "assets/images/bath_3.png",
      "name": "Intense Bathroom Cleaning",
      "description": "Deep Kitchen Cleaning Options Available. Book Now",
      "price": "399",
      "rating": "4.0",
      "orders_count": "(122)"
    },
    {
      "image": "assets/images/bath_4.png",
      "name": "3 BHK Bathrooms Cleaning",
      "description":
      "Get A Cleaner Couch & Avail Upto 60% Discount Search Results",
      "price": "880",
      "rating": "4.0",
      "orders_count": "(122)"
    },
    {
      "image": "assets/images/bath_5.png",
      "name": "1 Bathroom Classic",
      "description":
      "Hard water stains & dirt in tile grouting removal with scrubbing machine",
      "price": "180",
      "rating": "4.0",
      "orders_count": "(122)"
    },
    {
      "image": "assets/images/bath_6.png",
      "name": "Full House Deep Cleaning",
      "description":
      "Bathroom cleaning services include toilet bowl cleaning.wash bain cleaning",
      "price": "249",
      "rating": "4.0",
      "orders_count": "(122)"
    },
    {
      "image": "assets/images/bath_7.png",
      "name": "Villa Bathroom Cleaning",
      "description": "Bathroom Deep Cleaning Services in hyderabad",
      "price": "329",
      "rating": "4.0",
      "orders_count": "(122)"
    },
    {
      "image": "assets/images/bath_8.png",
      "name": "Bathroom Deep Cleaning",
      "description":
      "Expert bathroom cleaning service in Hyderabad for a clean and hygienic bathroom.",
      "price": "180",
      "rating": "4.0",
      "orders_count": "(122)"
    },
    {
      "image": "assets/images/bath_9.png",
      "name": "Bathroom Cleaning",
      "description": "Professional bathroom cleaning services in Hyderabad",
      "price": "280",
      "rating": "4.0",
      "orders_count": "(122)"
    },
    {
      "image": "assets/images/bath_10.png",
      "name": "Bathroom Washing",
      "description":
      "Bathroom cleaning services for residential, commercial place at budget prices",
      "price": "229",
      "rating": "4.0",
      "orders_count": "(122)"
    },
  ];


  @override
  Widget build(BuildContext context) {
    return AppBottomNavigationBar(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              // List tile have more....
              ListTile(
                minLeadingWidth: 0,
                minVerticalPadding: 2,
                horizontalTitleGap: -10,
                contentPadding: const EdgeInsets.all(0),
                leading: Column(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: 25,
                      ),
                      onPressed: () {
                        Get.back();
                      },
                    ),
                  ],
                ),
                title: SizedBox(
                  width: 100,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        child: CommonText(
                          'Palamuru Grill',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RestaurantDetails()));
                        },
                      ),
                    ],
                  ),
                ),
                subtitle: CommonText(
                  'Opposite Meridian School,Ayyappa society, \nMadhapur,100 Feet Rd,Hyderabad, Telangana 500081',
                  style: TextStyle(fontSize: 10),
                ),
                trailing: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          border: Border.all(color: Colors.grey)),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 93,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      // background color
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0XFFFA6423), Color(0xFF9A2D08)],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonText('Bathroom',
                          style: TextStyle(color: Colors.white, fontSize: 25)),
                      CommonText('Cleaning Services',
                          style: TextStyle(color: Colors.white, fontSize: 32)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommonText('Menu',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    // SizedBox(width: 175),
                  ],
                ),
              ),
              ListView.builder(
                itemCount: services_list.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      height: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade200,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Container(
                                child: Image.asset(
                                  services_list[index]['image'],fit: BoxFit.cover, // Use BoxFit.cover to maintain aspect ratio and cover the space
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 10,
                              child: Container(
                                padding: EdgeInsets.all(8),
                                // Add some padding for spacing
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  // Use spaceEvenly for consistent spacing
                                  children: [
                                    CommonText(
                                      services_list[index]['name'],
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepOrange,
                                        fontSize: 16,
                                      ),
                                    ),
                                    CommonText(
                                      'Biryani served with 1 chicken piece chest or leg, mirchi ka salan and raita',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.currency_rupee,
                                          size: 15,
                                        ),
                                        CommonText(
                                          services_list[index]['price'],
                                          style: TextStyle(
                                            // color: Colors.b,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Row(
                                          children: [
                                            CommonText(
                                              '4',
                                              style: TextStyle(
                                                fontSize: 14,
                                              ),
                                            ),
                                            Icon(
                                              Icons.star,
                                              size: 18,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        CommonText(
                                          '(122)',
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: selected == index
                                    ? Colors.redAccent
                                    : Colors.grey.shade300,
                                child: Center(
                                  child: Icon(
                                    Icons.add,
                                    color: selected == index
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

